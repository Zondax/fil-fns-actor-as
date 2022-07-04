deps:
	yarn install
	cargo install wizer --all-features

build:
	yarn asbuild
	wizer build/release.wasm -f init -o build/fil-fns-actor.wasm
	rm build/release.wasm build/release.wat

test:
	cd tests/local-vm && cargo r

.PHONY: deps build test
