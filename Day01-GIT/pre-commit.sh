#!/bin/bash
# Pre-commit hook to detect actual secrets (passwords, API keys, tokens)
set +x
echo "Running native pre-commit hook..."
# Press windows . to search for emojis & symbols 
# Check for password assignments, API keys, and tokens
if git diff --cached | grep -iE "(password\s*=|api[_-]?key|token\s*=|secret\s*=|private[_-]?key)"; then
  echo " ❌ Potential secret detected. Commit blocked."
  exit 1
else 
  echo " ✅ Commit passed security checks."
fi
exit 0
set -x