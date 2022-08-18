# FNS Assemblyscript Actor for FVM
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![GithubActions](https://github.com/Zondax/fil-fns-actor-as/actions/workflows/main.yaml/badge.svg)](https://github.com/Zondax/fil-fns-actor-as/blob/master/.github/workflows/main.yaml)

---

![zondax_light](docs/assets/zondax_light.png#gh-light-mode-only)
![zondax_dark](docs/assets/zondax_dark.png#gh-dark-mode-only)

_Please visit our website at [zondax.ch](https://www.zondax.ch)_

---

This project is an example of a Filecoin Naming System actor written in AssemblyScript.

This is the another smart contract you should check in order to learn how to create your own one. It implements:
- Save maps and integers to storage
- Load that data from storage
- Create a constructor
- Export methods with parameters and return values

In particular, this implements all the methods required to have a working name service, like ENS.
So this allows you to have your on name service running on FVM. Awesome, right?

This smart contract was built using the FVM SDK for AssemblyScript. Please, go to the [project](https://github.com/Zondax/fvm-as-sdk) in order to know more about it.


## Development

### Install dependencies

You will need to have NodeJS and Cargo (rust) installed.
```
$ make deps
```

### Build WASM actor

It will create a `fil-fns-actor.wasm` that you cna then upload to your lotus node.
```
$ make build
```

### Tests

In the `testing` folder you will find Rust code that allow to run your wasm actor into a locally run FVM. You will need Cargo (Rust) installed to run it.

It is required to build the wasm actor first.

```
$ make test
```

## Running FNS in Lotus

## Install the actor

```
$ ./lotus chain install-actor fil_fns_actor.wasm
sending message...
gas limit: 1125953791
waiting for message to execute...
Actor Code CID: bafk2bzaceblwezwmvzrxkkxnnol74sg3zzammocywuzxwsy6mqrvryn6345ie
Installed: false
```
> Note: The Actor Code CID is the value you will pass to create an actor using this actor template.

## Create the actor

```
$ ./lotus chain create-actor bafk2bzaceblwezwmvzrxkkxnnol74sg3zzammocywuzxwsy6mqrvryn6345ie
sending message...
waiting for message to execute...
ID Address: t01015
Robust Address: t2x3ubpqrjnbn2oxxi5prslxfsmpcly3vulqkj4pi
```
> Note: The actor creation return 2 addresses the ID Adress may change if there is a reorg. The Robust Address is definitive and should be used preferably in testnet/mainnet.

> Note 2: The addresses are the To address that you will be using to call methods on the actor

## Get your actor status

```
$ ./lotus state get-actor t01015
Address:	t01015
Balance:	0 FIL
Nonce:		0
Code:		bafk2bzaceblwezwmvzrxkkxnnol74sg3zzammocywuzxwsy6mqrvryn6345ie (<unknown>)
Head:		bafy2bzacebmkw6qgjwwtsrkqqa5jfqrnpnfr3q6dtsga6jo4se56meueuslq2
```
> Note: The Head is the CID were the actor State is stored.

```
$ ./lotus chain get bafy2bzacebmkw6qgjwwtsrkqqa5jfqrnpnfr3q6dtsga6jo4se56meueuslq2
{
	"counter": 2,
	"name_register": {
		"emma.fil": 100,
		"zondax.fil": 100
	}
}
```

## Register a name

To register a name we need to pass our parameter as base64 text. The parameter is cbor array with the name we wan to register : `["zondax.fil"]` Encode it as cbor () -> `816A7A6F6E6461782E66696C` base64 encoding -> `gWp6b25kYXguZmls`

Now lets invoke our register method (number 2) on our newly created actor

```
$ ./lotus chain invoke t01015 2 gWp6b25kYXguZmls
sending message...
waiting for message to execute...
Z3N1Y2Nlc3M=
```

The return parameter is base64 encoded, once decoded it says "success".
