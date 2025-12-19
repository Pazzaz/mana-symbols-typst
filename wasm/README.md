# Rust WASM plugin
This is the Rust part of the `wubrg` Typst package. This is compiled to [WASM](https://en.wikipedia.org/wiki/WebAssembly) and then imported into Typst.

# Instructions
To compile this, you need to have a working [Rust toolchain](https://www.rust-lang.org/). Then you need to install the `wasm32-unknown-unknown` target:

```sh
rustup target add wasm32-unknown-unknown
```

Then, build the crate with this target:

```sh
cargo build --release --target wasm32-unknown-unknown
cp ./target/wasm32-unknown-unknown/release/wubrg.wasm ../package/
```
