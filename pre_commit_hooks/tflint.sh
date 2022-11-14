#!/usr/bin/env bash

set -e

export PATH=$PATH:/usr/local/bin

tflint --init
for file in "$@"; do
  tflint $file
done
