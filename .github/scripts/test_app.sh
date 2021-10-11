#!/bin/bash

set -eo pipefail

xcodebuild -workspace TestCICD.xcodeproj \
            -scheme TestCICD\ iOS \
            -destination platform=iOS\ Simulator,OS=13.3,name=iPhone\ 11 \
            clean test | xcpretty
