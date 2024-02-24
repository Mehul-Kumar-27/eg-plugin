#!/usr/bin/env bash

# Log an error
function riotpot::log::error() {
  local timestamp=$(date +"[%m-%d %H:%M:%S]")
  echo "${timestamp}[ERROR] ${1-}" >&2
  shift
  for message; do
    echo "    ${message}" >&2
  done
}

# Format a message to follow a common format
function eg-plugin::log::status() {
  local timestamp=$(date +"[%m-%d %H:%M:%S]")
  echo "${timestamp}[INFO] ${1}"
  shift
  for message; do
      echo "   ${message}"
      echo "From the log"
  done
}