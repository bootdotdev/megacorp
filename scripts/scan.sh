echo "\n ==== SCANNIG FOR CREDIT CARD NUMBERS ====="
grep -rE --color=always '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' . --exclude-dir={.git}
echo "\n ==== CREDIT CARD SCAN COMPLETE ====="

echo "\n ==== SCANNIG FOR SS NUMBERS ====="
grep -rE --color=always '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' . --exclude-dir={.git}
echo "\n ==== SOCIAL SECURITY NUMBERS SCAN COMPLETE ====="

echo "\n ==== SCANNIG FOR PHONE NUMBERS ====="
grep -rE --color=always '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git}
grep -rE --color=always '\([0-9]{3}\) [0-9]{3}-[0-9]{4}' . --exclude-dir={.git}
echo "\n ==== PHONE NUMBERS SCAN COMPLETE ====="
