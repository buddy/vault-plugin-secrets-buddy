#!/usr/bin/env bash

echo "Checking fmt..."

gofmt_files=$(gofmt -l $(find . -name '*.go' | grep -v vendor))
if [[ -n ${gofmt_files} ]]; then
  echo 'gofmt must be run on the following files:'
  echo "${gofmt_files}"
  echo "You can use the command: \`make fmt\` to reformat the code."
  exit 1
else
  echo "ok"
fi
