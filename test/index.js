const { WASI } = require('wasi')
const { argv, env } = require('node:process')
const { join } = require('node:path')
const { readFile } = require('node:fs/promises')

const wasi = new WASI({
    args: argv,
    env,
    preopens: {
      '/sandbox': '/home/lola/Workspace/Zondax/fil-fns-as/test'
    }
})

var mem = undefined

let message = {
    from: 100,
    to: 11,
    sequence: 1,
    value: "0",
    gasLimit: 0,
    gasFeeCap: "0",
    gasPrenium: "0",
    method: 2,
    params: "gWp6b25kYXguZmls"
}

const importObject = { 
    wasi_snapshot_preview1: wasi.wasiImport,
    vm: {
        context: function (offset) {
            let bufMem = new Uint8Array(mem.buffer)

            // Value Hi 64 bits
            const valueHi = Buffer.allocUnsafe(8)
            valueHi.writeBigUInt64LE(0n, 0)
            bufMem.set(valueHi, offset)

            // move the cursor
            offset += 8

            // Value low 64 bits
            const valueLow = Buffer.allocUnsafe(8)
            valueLow.writeBigUInt64LE(0n, 0)
            bufMem.set(valueLow, offset)

            // move the cursor
            offset += 8
            
            // caller ActorID (64 bits)
            const caller = Buffer.allocUnsafe(8)
            caller.writeBigUInt64LE(BigInt(message.from), 0)
            bufMem.set(caller, offset)

            // move the cursor
            offset += 8

            // receiver ActorID (64 bits)
            const receiver = Buffer.allocUnsafe(8)
            receiver.writeBigUInt64LE(BigInt(message.to), 0)
            bufMem.set(receiver, offset)
            
            // move the cursor
            offset += 8

            // method Number (64 bits)
            const method = Buffer.allocUnsafe(8)
            method.writeBigUInt64LE(BigInt(message.method), 0)
            bufMem.set(method, offset)
            
            // move the cursor
            offset += 8

            // epoch (64 bits)
            const epoch = Buffer.allocUnsafe(8)
            epoch.writeBigInt64LE(0n, 0)
            bufMem.set(epoch, offset)
            
            // move the cursor
            offset += 8

            // network (32 bits)
            const network = Buffer.allocUnsafe(8)
            network.writeUInt32LE(0, 0)
            bufMem.set(network, offset)

            console.log(bufMem.slice(1024, offset))

            return
        },
        abort: function (errCode, messageOff, messageLen) {
            let bufMem = new Uint8Array(mem.buffer)
            let bufMessage = bufMem.slice(messageOff, messageOff+messageLen)
            let message = new TextDecoder("utf-8").decode(bufMessage)

            console.log(`Error: ${message} (${errCode})`)
        },
    },
    ipld: {
        block_create: function () {
            console.log('block_create')
        },
        block_link: function () {
            console.log('block_link')
        },
        block_stat: function (respPstr, id) {
            console.log('block_stat')
            console.log(id)

            return 0
        },
        block_read: function (respPtr, id, offset, obuf, maxLen) {
            console.log('block_read')
            console.log(id)
            console.log(offset)
        },
        block_open: function () {
            console.log('block_open')
        },
    },
    self: {
        set_root: function () {},
        root: function () {
            console.log('root')
        },
    },
    actor: {
        resolve_address: function () {},
    },
    debug: {
        log: function (messageOff, messageLen) {
            let bufMem = new Uint8Array(mem.buffer)
            let bufMessage = bufMem.slice(messageOff, messageOff+messageLen)
            let message = new TextDecoder("utf-8").decode(bufMessage)

            console.log(message)
        }
    },

}

async function main () {
    const wasm = await WebAssembly.compile(
        await readFile(join(__dirname, '../build/fil-fns-actor.wasm'))
      )
      const instance = await WebAssembly.instantiate(wasm, importObject)
    
      // FVM rust don't allow calling `_start` so we don't
      //wasi.start(instance)
      mem = instance.exports.memory
      instance.exports.invoke(message.method)
}


main()