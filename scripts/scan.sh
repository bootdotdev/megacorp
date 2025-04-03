echo "\n===== SCANNING FOR CREDIT CARD NUMBERS ======"
grep -rE --color=always '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "========= CREDIT CARD SCAN COMPLETE ======="
echo "===== SCANNING FOR SOCIAL SECURITY NUMBERS ======="
grep -rE --color=always '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "====== SOCIAL SECURITY SCAN COMPLETE ======="
echo "============== SCANNING FOR PHONE NUMBERS ======"
grep -rE --color=always '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git}
grep -rE --color=always '\([0-9]{3}\) [0-9]{3}-[0-9]{4}' . --exclude-dir={.git}
echo "========= PHONE NUMBER SCAN COMPLETE ======="
