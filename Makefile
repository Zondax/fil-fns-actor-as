deps:
	yarn install
	cargo install wizer --all-features

build:
	yarn asbuild
	wizer build/release.wasm -f init -o fil-fns-actor.wasm

test:
	cd testing && cargo r

.PHONY: deps build
