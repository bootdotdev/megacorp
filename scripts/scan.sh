#!/bin/bash

echo "=======Scanning======"
grep -rE --color=always '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "=======Scan complete======"

echo "\n======SCANNING FOR SOCIAL SECURITY NUMBERS====="
grep -rE --color=always '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "\n======SOCIAL SECURITY SCAN COMPLETE====="

echo "\n======SCANNING FOR PHONE NUMBERS====="
grep -rE --color=always '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
grep -rE --color=always '\([0-9]{3}\) [0-9]{3}-[0-9]{4}' . --exclude-dir={.git} --line-number
echo "\n======PHONE NUMBERS SCAN COMPLETE====="
