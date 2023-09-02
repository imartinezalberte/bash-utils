#!/bin/bash

if ! [[ -f "./colors.sh" ]]; then
  echo "library file ./colors.sh don't exists, so we can't test it"
  exit 2
fi

source ./colors.sh

# Testing things
debug "this is a debug message"
debug "this" "is" "a" "debug" "message" "with" "lot" "of" "parameters"
info "this is an info message"
warn "this is a warning message"
error "this is an error message"

