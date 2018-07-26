NAME := game
TRPL := wasm32-unknown-unknown

dist/$(NAME).opt.wasm: src/lib.rs Cargo.toml Makefile
	cargo build --release --target $(TRPL)
	wasm-bindgen target/$(TRPL)/release/$(NAME).wasm --out-dir ./dist
	wasm-gc ./dist/$(NAME)_bg.wasm ./dist/$(NAME).gc.wasm
	wasm-opt ./dist/$(NAME).gc.wasm -Os -o ./dist/$(NAME).opt.wasm
	ls -l dist

install:
	cargo install wasm-pack
	cargo install wasm-gc

