#!/bin/bash

echo "Running security scan (Shift-Left)..."

# Scan for hardcoded secrets
if grep -R "PASSWORD\|SECRET\|API_KEY" .; then
  echo "❌ Security Issue: Hardcoded secret detected"
  exit 1
fi

# Scan for insecure commands
if grep -R "curl http://" .; then
  echo "❌ Security Issue: Insecure HTTP usage detected"
  exit 1
fi

echo "✅ Security scan passed"

