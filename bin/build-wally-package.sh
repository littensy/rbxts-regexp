#!/bin/sh

set -e

mkdir -p build

rm -rf build/wally

mkdir -p build/wally

cp -r src/ build/wally/src

./bin/remove-tests.sh build/wally/src

darklua process build/wally/src build/wally/src

PACKAGE_VERSION=$(cat package.json \
  | grep version \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[",]//g' \
  | cut -c2-)

cp default.project.json build/wally
cat wally.toml | sed 's/#VERSION#/'"$PACKAGE_VERSION"'/' > build/wally/wally.toml
cp LICENSE build/wally

wally package --project-path build/wally --list
