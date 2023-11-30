#!/bin/sh

set -e

rm -rf roblox/src

mkdir -p roblox

cp -r src/ roblox/

./bin/remove-tests.sh roblox/src

darklua process roblox/src roblox/src

cp default.project.json roblox/

mkdir -p build

rojo build roblox/default.project.json -o build/luau-regexp.rbxm
