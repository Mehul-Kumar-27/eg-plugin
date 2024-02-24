#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail


readonly EG_PLUGIN_PATH="${EG_PLUGIN_ROOT}/plugin"
readonly EG_PLUGIN_BIN="${OUT_DIR:-bin}"

