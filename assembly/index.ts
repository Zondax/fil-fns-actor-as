// @chainfile-index
import {caller, genericAbort, resolveAddress, log} from "@zondax/fvm-as-sdk/assembly/wrappers"
import {USR_ILLEGAL_ARGUMENT} from "@zondax/fvm-as-sdk/assembly/env"
import {State} from "./state"

// @ts-ignore
@constructor
// Function executed on create actor
function constructor(): void {
// @ts-ignore
  State.defaultState().save()

  return;
}

// @ts-ignore
@export_method(2)
// `register` associate a domain name to a user address
function register(name: string): void {
  const address = caller()

  // @ts-ignore
  const state = State.load() as State

  if (state.nameRegister.has(name)) {
    genericAbort(USR_ILLEGAL_ARGUMENT, `"${name}" already registered`)
    return
  }

  state.count += 1
  state.nameRegister.set(name, address)

  state.save()

  return
}

// @ts-ignore
@export_method(3)
// `transfer` transfer a domain to a new address
function transfer(name: string, addr: Uint8Array): void {
  const callerAddr = caller()

  // @ts-ignore
  const state = State.load() as State

  if (state.count == 0) {
    genericAbort(USR_ILLEGAL_ARGUMENT, `0 name register`)
    return
  }

  if (!state.nameRegister.has(name)) {
    genericAbort(USR_ILLEGAL_ARGUMENT, `'${name}' hasn't been registered yet`)
    return
  }

  const owner = state.nameRegister.get(name)

  if (callerAddr != owner) {
    genericAbort(USR_ILLEGAL_ARGUMENT, `you are not the owner of "${name}". Owner is ${owner} `)
  }

  // resolve new owner address
  const newOwner = resolveAddress(addr)

  state.nameRegister.set(name, newOwner)
  state.save()

  return
}
