#!/bin/sh

set -e

./bin/build-roblox-model.sh
./bin/build-single-file.sh
./bin/build-wally-package.sh
