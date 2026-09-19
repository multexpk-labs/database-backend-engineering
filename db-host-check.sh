#!/usr/bin/env bash
set -u

echo "== Database Host Check =="
echo "Time: $(date -Is)"
echo "Host: $(hostname)"
echo "Kernel: $(uname -sr)"
command -v mysql >/dev/null 2>&1 && mysql --version || echo "mysql: not installed"
command -v mysqladmin >/dev/null 2>&1 && mysqladmin ping 2>&1 || true
echo "--- Resources ---"
df -h /
free -h 2>/dev/null || true
echo "--- Listening TCP ports ---"
ss -lnt 2>/dev/null || true
