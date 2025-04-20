echo "\n====== SCANNING FOR CREDIT CARD NUMBERS ======"
grep -rE --color=always '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' .
echo "======= CREDIT CARD SCAN COMPLETE ======"
#//todo add more stuff
#//todo add more stuff phone numbers
