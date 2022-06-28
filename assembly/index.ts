// @filecoinfile
import {ParamsRawResult} from "@zondax/fvm-as-sdk/assembly/env/types"
import {caller, genericAbort, resolve_address} from "@zondax/fvm-as-sdk/assembly/wrappers"
import {USR_ILLEGAL_ARGUMENT} from "@zondax/fvm-as-sdk/assembly/env"
import {State} from "./state"
import {RegisterParams, TransferParams} from "./params"

// @ts-ignore
@constructor
// Function executed on create actor
function constructor(rawParams: ParamsRawResult): void {
  const emptyMap = new Map<String, u64>()
  const state = new State(0, emptyMap)
  state.save()

  return;
}

// @ts-ignore
@export_method(2)
// `register` associate a domain name to a user address
function register(rawParams: ParamsRawResult): void {
  const params = RegisterParams.fromRaw(rawParams.raw)

  const address = caller()
  const state = State.load()

  if (state.nameRegister.has(params.name)) {
    genericAbort(USR_ILLEGAL_ARGUMENT, `"${params.name}" already registered`)
    return
  }
  state.count += 1
  state.nameRegister.set(params.name, address)
  state.save()

  return
}

// @ts-ignore
@export_method(3)
// `transfer` transfer a domain to a new address
function transfer(rawParams: ParamsRawResult): void {
  const params = TransferParams.fromRaw(rawParams.raw)

  const callerAddr = caller()
  const state = State.load()

  if (state.count == 0) {
    genericAbort(USR_ILLEGAL_ARGUMENT, `0 name register`)
    return
  }

  if (!state.nameRegister.has(params.name)) {
    genericAbort(USR_ILLEGAL_ARGUMENT, `'${params.name}' hasn't been registered yet`)
    return
  }

  const owner = state.nameRegister.get(params.name)

  if (callerAddr != owner) {
    genericAbort(USR_ILLEGAL_ARGUMENT, `you are not the owner of "${params.name}". Owner is ${owner} `)
  }

  // resolve new owner address
  const newOwner = resolve_address(params.addr)

  state.nameRegister.set(params.name, newOwner)
  state.save()

  return
}
