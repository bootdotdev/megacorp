#!/bin/sh
set -eu

printf 'Scanning repository files...\n'
find . -maxdepth 2 -type f ! -path './.git/*' | sort
printf '\nTotal files: '
find . -maxdepth 2 -type f ! -path './.git/*' | wc -l | tr -d ' '
printf '\n'
