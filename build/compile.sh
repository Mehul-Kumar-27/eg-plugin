#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

EG_PLUGIN_BUILD=$(dirname "${BASH_SOURCE[0]}")
EG_PLUGIN_ROOT=$(cd "${EG_PLUGIN_BUILD}/.." && pwd -P)

source "${EG_PLUGIN_BUILD}/lib/common.sh"
source "${EG_PLUGIN_BUILD}/lib/build.sh"

eg-plugin::build::plugin
