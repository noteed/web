#! /bin/bash

# This runs browser-sync, watching this directory for changes. You should
# simply point your web browser to http://localhost:3000/.

docker kill browser-sync
docker rm browser-sync
docker run \
  -dt \
  --name browser-sync \
  -p 3000:3000 \
  -p 3001:3001 \
  -v $(pwd):/source \
  -w /source \
  browser-sync \
  /run.sh
