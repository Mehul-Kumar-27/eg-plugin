#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

eg-plugin::build::plugin() {
    echo "${EG_PLUGIN_BIN} hello"
    for plugin in "$EG_PLUGIN_PATH"/*/; do
        pg=$(basename "$plugin")
        echo "Building plugin: ${plugin}"
        echo "Plugin name: ${pg}"
        go build \
            -buildmode="plugin" \
            --mod="mod" \
            -o "${EG_PLUGIN_ROOT}/plugin/${pg}/${pg}.so" \
            "$plugin"/*.go
        echo "Compiled plugin: ${pg} on ${EG_PLUGIN_ROOT}/plugin/${pg}/${pg}.so"
    done
}
