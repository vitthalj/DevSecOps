#!/bin/bash
set +x
echo "Running native pre-commit hook..."
# Press Windows . then search check to add symbols / imoji's
if git diff --cached | grep -i "secret?"; then
  echo " ❌ Secret? detected. Commit blocked."
  exit 1
else 
  echo " ✅ Commit passed security checks."
fi
exit 0
set -x