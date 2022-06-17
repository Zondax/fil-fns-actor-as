import {genericAbort} from "@zondax/fvm-as-sdk/assembly/wrappers"
import {USR_ILLEGAL_ARGUMENT} from "@zondax/fvm-as-sdk/assembly/env"
import {CBORDecoder} from "@zondax/assemblyscript-cbor/assembly"
import {Value, Arr, Str} from "@zondax/assemblyscript-cbor/assembly/types"

export class RegisterParams {
    constructor(public name: String){}

    // decode cbor
    static fromRaw(raw: Uint8Array): RegisterParams{
        const decoder = new CBORDecoder(raw.buffer)
        const rawState: Value = decoder.parse()
        
        if (!rawState.isArr) {
            genericAbort(USR_ILLEGAL_ARGUMENT, "parameters expected to be an array")
        }
        
        const namesArray = (rawState as Arr).valueOf()
        if (namesArray.length !== 1) {
            genericAbort(USR_ILLEGAL_ARGUMENT, "expect array length to be exactly one")
        }

        const nameValue = namesArray[0]
        if (!nameValue.isString) {
            genericAbort(USR_ILLEGAL_ARGUMENT, "expected name to be a string")
        }

        const name = (nameValue as Str).valueOf()

        return new RegisterParams(name)        
    }
}

