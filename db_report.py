#!/usr/bin/env python3
import json
import os
import platform
import shutil
import socket
import sys

root = shutil.disk_usage("/")
report = {
    "hostname": socket.gethostname(),
    "platform": platform.platform(),
    "python": sys.version.split()[0],
    "cpu_count": os.cpu_count(),
    "root_disk": {"total_bytes": root.total, "used_bytes": root.used, "free_bytes": root.free},
}
print(json.dumps(report, indent=2))
