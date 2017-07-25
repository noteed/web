#!/bin/bash

inotifywait -mqre close_write --format "%w%f" /source/templates/ /markdown/ | while read FILE
do
  if [[ "$FILE" =~ /templates/.*html$ ]] ; then
    /gather.sh
  fi
  if [[ "$FILE" =~ .*md$ ]] ; then
    /gather.sh
  fi
done
