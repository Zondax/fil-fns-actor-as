import {methodNumber, caller, valueReceived, usrUnhandledMsg, create, genericAbort, paramsRaw} from "@zondax/fvm-as-sdk/assembly/wrappers";
import {NO_DATA_BLOCK_ID, DAG_CBOR, USR_UNSPECIFIED} from "@zondax/fvm-as-sdk/assembly/env";
import {isConstructorCaller} from "@zondax/fvm-as-sdk/assembly/helpers";
import {State} from "./state";
import {RegisterParams} from "./params"

export function invoke(paramsID: u32): u32 {
  const methodNum = methodNumber()

  switch (u32(methodNum)) {
    case 1:
      constructor()
      break

    case 2:
      const rawParams = paramsRaw(paramsID)
      const params = RegisterParams.fromRaw(rawParams.raw)
      register(params)
      break

    default:
      usrUnhandledMsg()
  }

  return NO_DATA_BLOCK_ID
}

// Function executed on create actor
function constructor(): void {
  if( !isConstructorCaller() ) return;

  const emptyMap = new Map<String, u64>()
  const state = new State(0, emptyMap)
  state.save()

  return;
}

// `register` associate a domain name to a user address
function register(params: RegisterParams): void {
  const address = caller()
  const state = State.load()
  state.count += 1
  state.nameRegister.set(params.name, address)
  state.save()

  return
}
