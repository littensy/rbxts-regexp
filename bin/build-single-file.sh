#!/bin/sh

set -e

mkdir -p build

rm -f build/luau-regexp.lua

darklua process --config .darklua-bundle.json src/init.lua build/luau-regexp.lua
