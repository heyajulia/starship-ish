#!/bin/bash

set -euxo pipefail

cd /build
git clone https://github.com/starship/starship
cd starship
git checkout tags/v0.47.0
cargo build --release --target i686-unknown-linux-musl --no-default-features
target/i686-unknown-linux-musl/release/starship
