#!/usr/bin/env python3
import json, platform, shutil, socket
from pathlib import Path

total, used, free = shutil.disk_usage(Path('/'))
print(json.dumps({'hostname': socket.gethostname(), 'platform': platform.platform(), 'kernel': platform.release(), 'python': platform.python_version(), 'root_disk_gb': round(total/1024**3,2), 'root_used_gb': round(used/1024**3,2), 'root_free_gb': round(free/1024**3,2), 'mysql_client': shutil.which('mysql'), 'psql_client': shutil.which('psql')}, indent=2))