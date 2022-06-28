import {BaseState} from "@zondax/fvm-as-sdk/assembly/utils/state";
import {Value, Obj, Integer, Arr} from "@zondax/assemblyscript-cbor/assembly/types";
import {Cid} from "@zondax/fvm-as-sdk/assembly/env/types";
import {USR_ILLEGAL_ARGUMENT} from "@zondax/fvm-as-sdk/assembly/env";
import {CBOREncoder} from "@zondax/assemblyscript-cbor/assembly";
import { genericAbort } from "@zondax/fvm-as-sdk/assembly/wrappers";

export class State extends BaseState {
    count: u64
    nameRegister: Map<string, u64>

    constructor(count: u64, nameRegister: Map<string, u64>) {
        super()
        this.count = count
        this.nameRegister = nameRegister
    }

    // This function should only indicate how to serialize the store into CBOR
    protected encode(): ArrayBuffer {
        const encoder = new CBOREncoder()
        encoder.addArray(2)
        encoder.addUint64(this.count)

        encoder.addObject(this.nameRegister.size)
        if (this.nameRegister.size > 0) {
            const values = this.nameRegister.values()
            const keys = this.nameRegister.keys()
            for (let i = 0; i < this.nameRegister.size; i++) {
                encoder.addKey(keys[i])
                encoder.addUint64(values[i])
            }
        } 

        return encoder.serialize()
    }

    // This function should only indicate how to convert from a generic object model to this state class
    protected parse(rawState: Value): State {
        let counter:i64 = 0
        let nameRegister:Map<String, u64> = new Map<String, u64>()
        if(rawState.isArr){
            // Here we cast as object as we know that is what we saved before
            const state = (rawState as Arr).valueOf()

            // Get counter
            const counterValue = state[0] as Value
            if(counterValue.isInteger)
                counter = (counterValue as Integer).valueOf()

            // Get name register
            const nameRegisterValue = state[1] as Value
            if(nameRegisterValue.isObj) {
                let tmp:Map<String, Value> = new Map<String, Value>()
                tmp = (nameRegisterValue as Obj).valueOf()
                
                const keys = tmp.keys()
                for (let i = 0; i < keys.length; i++) {
                    const key  = keys[i]
                    const value = tmp.get(key)
                    if (value.isUndefined) {
                        genericAbort(USR_ILLEGAL_ARGUMENT, "failed to parse names")
                    }
                    const addrID = (value as Integer).valueOf()
                    nameRegister.set(key, addrID as u64)
                }
            }
        }

        return new State(counter, nameRegister)
    }

    static load():State{
        const emptyMap = new Map<String, u64>()
        return new State(0, emptyMap).load() as State
    }
}
