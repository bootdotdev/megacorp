echo -e "\n====== SCANNING FOR CREDIT CARD NUMBERS ======"

grep -rEn --color=always \
'(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' \
. \
--exclude-dir=.git

echo "==== CREDIT CARD SCAN COMPLETE ===="

echo -e "\n==== SCANNING FOR SOCIAL SECURITY NUMBERS ===="

grep -rE \
  --color=always \
  --exclude-dir=.git \
  --line-number \
  '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' .

echo "==== SOCIAL SECURITY SCAN COMPLETE ===="

echo -e "\n==== SCANNING FOR PHONE NUMBERS ===="

# Matches 123-456-7890
grep -rE \
  --color=always \
  --line-number \
  --exclude-dir=.git \
  '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' .

# Matches (123) 456-7890
grep -rE \
  --color=always \
  --line-number \
  --exclude-dir=.git \
  '\([0-9]{3}\) [0-9]{3}-[0-9]{4}\b' .

echo "==== PHONE NUMBER SCAN COMPLETE ===="
