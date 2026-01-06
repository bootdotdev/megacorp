#!/bin/sh
output=$(sh "$@" 2>&1)
echo "$output" | sed 's/bash/apux/g'
