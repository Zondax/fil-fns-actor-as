import {methodNumber, usrUnhandledMsg, create} from "@zondax/fvm-as-sdk/assembly/wrappers";
import {NO_DATA_BLOCK_ID, DAG_CBOR} from "@zondax/fvm-as-sdk/assembly/env";
import {isConstructorCaller} from "@zondax/fvm-as-sdk/assembly/helpers";
import {State} from "./state";

export function invoke(_: u32): u32 {
  const methodNum = methodNumber()

  switch (u32(methodNum)) {
    case 1:
      constructor()
      break

    case 2:
      register()
      break

    default:
      usrUnhandledMsg()
  }

  return NO_DATA_BLOCK_ID
}

// Function executed on create actor
function constructor(): void {
  if( !isConstructorCaller() ) return;

  const emptyMap = new Map<String, Array<u8>>()
  const state = new State(0, emptyMap)
  state.save()

  return;
}

// `Register` associate a domain name to a user address
function register(): void {
  const state = State.load()
  state.count += 1 
  state.save()

  return
}
