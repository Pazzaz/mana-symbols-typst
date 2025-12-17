use mana_symbols::{Manas, SVGConfig};
use wasm_minimal_protocol::*;

use ciborium::de::from_reader;

initiate_protocol!();

#[derive(serde::Deserialize)]
struct Arguments {
    s: Vec<u8>,
    shadow: bool,
    sort: bool,
    normalize_hybrid: bool,
}

#[wasm_func]
pub fn mana_svg(arg: &[u8]) -> Vec<u8> {
    let args: Arguments = from_reader(arg).unwrap();
    let formatted = str::from_utf8(&args.s).unwrap();
    let mut m: Manas = formatted.parse().unwrap();

    if args.sort {
        m.sort();
    }

    if args.normalize_hybrid {
        m.normalize_hybrid();
    }

    let mut config = SVGConfig::default();
    config.shadow = args.shadow;

    let svg = m.as_svg(&config);
    svg.to_string().bytes().collect()
}
