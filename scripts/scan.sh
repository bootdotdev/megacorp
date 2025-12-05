echo -e "\n====== SCANNING FOR CREDIT CARD NUMBERS ======"
grep -rE --color=always '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo -e "========= CREDIT CARD SCAN COMPLETE ==========\n"
echo -e "\n==== SCANNING FOR SOCIAL SECURITY NUMBERS ===="
grep -rE --color=always '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo -e "======= SOCIAL SECURITY SCAN COMPLETE ========\n"
echo -e "\n========= SCANNING FOR PHONE NUMBERS ========="
grep -rE --color=always '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
grep -rE --color=always '\([0-9]{3}\) [0-9]{3}-[0-9]{4}' . --exclude-dir={.git} --line-number
echo -e "========= PHONE NUMBER SCAN COMPLETE =========\n"
