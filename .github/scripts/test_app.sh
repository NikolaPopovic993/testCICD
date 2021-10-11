#!/bin/bash

set -eo pipefail

xcodebuild -workspace TestCICD.xcworkspace \
            -scheme TestCICD \
            -destination platform=iOS\ Simulator,OS=14.5,name=iPhone\ 11 \
            clean test | xcpretty
