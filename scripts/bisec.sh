if grep -q "SCANNING" "scripts/scan.sh"; then
    exit 1
else
    exit 0
fi