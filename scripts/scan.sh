echo "\n=ニニニニ= SCANNING FOR CREDIT CARD NUMBERS ニニニニニー"
grep -rE --color=always '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo ） "ニニニニニニニニ= CREDIT CARD SCAN COMPLETE ニニニニニニニ！！！"
echo "\n==== SCANNING FOR SOCIAL SECURITY NUMBERS ===="
grep -rE --color=always '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' --exclude-dir={-git} --line-number
echo "====== SOCIAL SECURITY SCAN COMPLETE ======"
echo "\n==== SCANNING FOR PHONE NUMBERS ======"
grep -rE --color=always '\([0-9]{3}\) [0-9]{3}-[0-9]{4}' --exclude-dir={-git} --line-number
echo "====== PHONE NUMBER SCAN COMPLETE ======"
