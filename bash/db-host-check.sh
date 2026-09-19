#!/usr/bin/env bash
set -u
echo "== Database Host Check =="
echo "Host: $(hostname)"
echo "Kernel: $(uname -sr)"
uptime || true
free -h || true
df -h / || true
ss -lntp 2>/dev/null || ss -lnt 2>/dev/null || true
command -v mysql >/dev/null && mysql --version || echo "mysql client: not installed"
command -v psql >/dev/null && psql --version || echo "psql client: not installed"