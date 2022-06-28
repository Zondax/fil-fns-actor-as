import {genericAbort} from "@zondax/fvm-as-sdk/assembly/wrappers"
import {USR_ILLEGAL_ARGUMENT} from "@zondax/fvm-as-sdk/assembly/env"
import {CBORDecoder} from "@zondax/assemblyscript-cbor/assembly"
import {Value, Arr, Str, Bytes} from "@zondax/assemblyscript-cbor/assembly/types"

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

export class TransferParams {
    constructor(public name: String, public addr: Uint8Array){}

    // decode cbor
    static fromRaw(raw: Uint8Array): TransferParams{
        const decoder = new CBORDecoder(raw.buffer)
        const rawState: Value = decoder.parse()
        
        if (!rawState.isArr) {
            genericAbort(USR_ILLEGAL_ARGUMENT, "parameters expected to be an array")
        }
        
        const paramsArray = (rawState as Arr).valueOf()
        if (paramsArray.length !== 2) {
            genericAbort(USR_ILLEGAL_ARGUMENT, "expect array length to be exactly 2")
        }

        const nameValue = paramsArray[0]
        if (!nameValue.isString) {
            genericAbort(USR_ILLEGAL_ARGUMENT, "expected name to be a string")
        }

        const name = (nameValue as Str).valueOf()

        const addressValue = paramsArray[1]
        if (!addressValue.isBytes) {
            genericAbort(USR_ILLEGAL_ARGUMENT, "expected addr to be bytes")
        }

        const addr: Uint8Array = (addressValue as Bytes).valueOf()
        
        return new TransferParams(name, addr)        
    }
}
