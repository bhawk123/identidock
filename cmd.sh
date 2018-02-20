#!/bin/bash
set -e

version="identidock-v1.py"
if [ "$ENV" = 'DEV' ]; then
    echo "Running Development Server"
    exec python ${version}
else 
    echo "Running Production Server"
    exec uwsgi -http 0.0.0.0:9090 --wsgi-file /app/${version} --callable app --stats 0.0.0.0:9191
fi
