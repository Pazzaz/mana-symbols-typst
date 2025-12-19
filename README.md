# `wubrg` Typst Package
This is a [Typst](https://typst.app/) package for displaying [Magic the Gathering][wp:mtg] [mana symbols][mw:ms]. The package is split into two parts: the typst code ([`package`](package)) and the Rust code ([`wasm`](wasm)). Most of the implementation is contained in the Rust crate [`mana-symbols`][gw:ms].

For a rendered example using this package, see [`example`](example).

[wp:mtg]: https://en.wikipedia.org/wiki/Magic:_The_Gathering
[mw:ms]:  https://mtg.wiki/page/Numbers_and_symbols#Mana_symbols
[gw:ms]: https://github.com/Pazzaz/mana-symbols