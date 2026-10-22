#!/bin/sh
set -eu
BUILD_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
export CLANG_MODULE_CACHE_PATH="$BUILD_DIR/.module-cache"
export SWIFT_MODULECACHE_PATH="$BUILD_DIR/.module-cache"
python3 "$BUILD_DIR/prepare_animatic_v0_1.py"
swift -suppress-warnings -module-cache-path "$BUILD_DIR/.module-cache" "$BUILD_DIR/build_animatic_v0_1.swift" "$BUILD_DIR" --inspect
swift -suppress-warnings -module-cache-path "$BUILD_DIR/.module-cache" "$BUILD_DIR/build_animatic_v0_1.swift" "$BUILD_DIR"
swift -suppress-warnings -module-cache-path "$BUILD_DIR/.module-cache" "$BUILD_DIR/validate_audio_v0_1.swift" "$BUILD_DIR"
