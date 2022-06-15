import {BaseState} from "@zondax/fvm-as-sdk/assembly/utils/state";
import {Value, Obj, Integer} from "@zondax/assemblyscript-cbor/assembly/types";
import {Cid} from "@zondax/fvm-as-sdk/assembly/env/types";
import {CBOREncoder} from "@zondax/assemblyscript-cbor/assembly";

export class State extends BaseState {
    count: u64
    nameRegister: Map<string, u8>

    constructor(count: u64, nameRegister: Map<string, u8>) {
        super()
        this.count = count
        this.nameRegister = nameRegister
    }

    // This function should only indicate how to serialize the store into CBOR
    protected encode(): ArrayBuffer {
        const encoder = new CBOREncoder()
        encoder.addObject(1)
        encoder.addKey("counter")
        encoder.addUint64(this.count)

        return encoder.serialize()
    }

    // This function should only indicate how to convert from a generic object model to this state class
    protected parse(rawState: Value): State {
        let counter:i64 = 0
        let nameRegister:Map<String, u8> = new Map<String, u8>()
        if(rawState.isObj){
            // Here we cast as object as we know that is what we saved before
            const state = rawState as Obj

            // Get counter
            if(state.has("counter"))
                counter = (state.get("counter") as Integer).valueOf()
        }

        return new State(counter, nameRegister)
    }

    static load():State{
        const emptyMap = new Map<String, u8>()
        return new State(0, emptyMap).load() as State
    }
}
