#! /usr/bin/env bash

echo Starting browser-sync
browser-sync \
  start \
  --server \
  --files "/source/index.html" "/source/gathered/" "/source/css/" "/source/js/" \
  --no-open &

echo Watching files to be recompiled by pandoc...
/watch.sh
