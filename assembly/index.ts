// @filecoinfile
import {ParamsRawResult} from "@zondax/fvm-as-sdk/assembly/env/types"
import {isConstructorCaller} from "@zondax/fvm-as-sdk/assembly/helpers"
import {caller} from "@zondax/fvm-as-sdk/assembly/wrappers"
import {State} from "./state"
import {RegisterParams} from "./params"

// @ts-ignore
@constructor
// Function executed on create actor
function constructor(rawParams: ParamsRawResult): void {
  if( !isConstructorCaller() ) return;

  const emptyMap = new Map<String, u64>()
  const state = new State(0, emptyMap)
  state.save()

  return;
}

// @ts-ignore
@export_method(2)
// `register` associate a domain name to a user address
function register(rawParams: ParamsRawResult): Uint8Array {
  const params = RegisterParams.fromRaw(rawParams.raw)

  const address = caller()
  const state = State.load()
  state.count += 1
  state.nameRegister.set(params.name, address)
  state.save()

  const message = "Success"
  const msg = Uint8Array.wrap(String.UTF8.encode(message))

  return msg
}
