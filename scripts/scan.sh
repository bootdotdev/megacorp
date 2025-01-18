echo "==== Scanning for Creditcard Numbers ===="
grep -rE --color=always '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "==== Creditcard Scan Complete ===="
echo "==== Scanning for Social Security Numbers ===="
grep -rE --color=always '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "==== Social Security Scan Complete ===="
echo "==== Scanning for Phone Numbers ===="
grep -rE --color=always '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
grep -rE --color=always '\([0-9]{3}\) [0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "==== Phone Number Scanning Complete ===="
