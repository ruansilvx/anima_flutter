#!/bin/bash

# Basic script to run all unit test

# To run: chmod 755 scripts/unit_tests.sh && ./scripts/unit_tests.sh

test_root="../test"
if [ -d "$test_root" ] && [ -n "$(ls -A $test_root)" ]; then
  flutter test test_root
fi

features=("list" "details")

for feature in "${features[@]}"; do
  dir="${feature}/test"
  if [ -d "$dir" ] && [ -n "$(ls -A "$dir")" ]; then
    flutter test "$dir"
  fi
done
