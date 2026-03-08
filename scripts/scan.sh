#!/bin/bash

# === K: Credit Card Scanner ===
printf "\n====== SCANNING FOR CREDIT CARD NUMBERS ======\n"
grep -rE --color=always '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "========= CREDIT CARD SCAN COMPLETE =========="

# === L: Social Security Number Scanner ===
printf "\n==== SCANNING FOR SOCIAL SECURITY NUMBERS ====\n"
grep -rE --color=always '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "======= SOCIAL SECURITY SCAN COMPLETE ========"

# === M: Phone Number Scanner ===
printf "\n========= SCANNING FOR PHONE NUMBERS =========\n"
grep -rE --color=always '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
grep -rE --color=always '\([0-9]{3}\) [0-9]{3}-[0-9]{4}' . --exclude-dir={.git} --line-number
echo "========= PHONE NUMBER SCAN COMPLETE ========="
