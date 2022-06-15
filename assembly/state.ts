import {BaseState} from "@zondax/fvm-as-sdk/assembly/utils/state";
import {Value, Obj, Integer} from "@zondax/assemblyscript-cbor/assembly/types";
import {Cid} from "@zondax/fvm-as-sdk/assembly/env/types";
import {CBOREncoder} from "@zondax/assemblyscript-cbor/assembly";

export class State extends BaseState {
    count: u64
    nameRegister: Map<string, Array<u8>>

    constructor(count: u64, nameRegister: Map<string, Array<u8>>) {
        super()
        this.count = count
        this.nameRegister = nameRegister
    }

    // This function should only indicate how to serialize the store into CBOR
    protected encode(): ArrayBuffer {
        const encoder = new CBOREncoder()
        encoder.addObject(2)
        encoder.addKey("counter")
        encoder.addUint64(this.count)
        encoder.addKey("name_register")

        encoder.addObject(this.nameRegister.size)
        if (this.nameRegister.size > 0) {
            const values = this.nameRegister.values()
            const keys = this.nameRegister.keys()
            for (let i = 0; i < this.nameRegister.size; i++) {
                encoder.addKey(keys[i])
                encoder.addArrayU8(values[i])
            }
        }

        return encoder.serialize()
    }

    // This function should only indicate how to convert from a generic object model to this state class
    protected parse(rawState: Value): State {
        let counter:i64 = 0
        let nameRegister:Map<String, Array<u8>> = new Map<String, Array<u8>>()
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
        const emptyMap = new Map<String, Array<u8>>()
        return new State(0, emptyMap).load() as State
    }
}
