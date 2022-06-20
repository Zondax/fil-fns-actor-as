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

const importObject = { 
    wasi_snapshot_preview1: wasi.wasiImport,
    vm: {
        context: function (kek) {
            console.log(kek)
            let bufMem = new Uint8Array(mem.buffer)


        },
        abort: function (errCode, messageOff, messageLen) {
            let bufMem = new Uint8Array(mem.buffer)
            let bufMessage = bufMem.slice(messageOff, messageOff+messageLen)
            let message = new TextDecoder("utf-8").decode(bufMessage)

            console.log(`Error: ${message} (${errCode})`)
        },
    },
    ipld: {
        block_create: function () {},
        block_link: function () {},
        block_stat: function () {},
        block_read: function () {},
        block_open: function () {},
    },
    self: {
        set_root: function () {},
        root: function () {},
    },

}

async function main () {
    const wasm = await WebAssembly.compile(
        await readFile(join(__dirname, '../fil-fns-actor.wasm'))
      )
      const instance = await WebAssembly.instantiate(wasm, importObject)
    
      // FVM rust don't allow calling `_start` so we don't
      //wasi.start(instance)
      mem = instance.exports.memory
      instance.exports.invoke(1)
}


main()