#!/bin/bash

failed=0

for test in tests/*.test; do
  jimsh "$test"
  if (($?)); then
    failed=$(($failed + 1))
  fi
done

if (($failed)); then
  echo "$failed suites failed" >&2
  exit 2
fi
