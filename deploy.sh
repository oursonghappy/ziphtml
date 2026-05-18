#!/bin/bash
set -e

SERVER=bori@100.100.171.107
LOCAL_HTML=/Users/sagevee/Projects/ziphtml/index.html
REMOTE_DIR=/tmp/securezip

echo "==> Copying files..."
scp "$LOCAL_HTML" "$SERVER:$REMOTE_DIR/"

echo "==> Building image..."
ssh "$SERVER" "docker build -t securezip:latest $REMOTE_DIR/ 2>&1"

echo "==> Restarting container..."
ssh "$SERVER" "
  docker rm -f securezip-web 2>/dev/null || true
  docker run -d --name securezip-web --network kamal securezip:latest
  sleep 1
  IP=\$(docker inspect securezip-web --format '{{.NetworkSettings.Networks.kamal.IPAddress}}')
  echo \"Container IP: \$IP\"
  docker exec kamal-proxy kamal-proxy deploy securezip \
    --target=\"\$IP:80\" \
    --tls \
    --host=securezip.sagevee.com \
    --health-check-path=/
"

echo "==> Done! https://securezip.sagevee.com"
