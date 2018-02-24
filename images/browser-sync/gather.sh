#! /bin/bash

# Run pandoc on a bunch of files, putting the result in the gathered/
# directory.

# We don't use -o with the final destination file directly to avoid glitches
# with browser-sync when the file is deleted/created (well, I assume that was
# what I witnessed).

echo "<ul>" > /source/index.html

for NAME in $(ls /markdown/*.md) ; do

  NAME=$(basename $NAME)
  NAME=${NAME%.*}

  echo $(date --iso-8601=seconds --utc) XXXX0000 gather.sh INFO Rendering $NAME...
  echo $(date --iso-8601=seconds --utc) XXXX0000 gather.sh INFO Rendering $NAME... >> gathered/gather.log
  pandoc \
    --template /source/templates/default.html \
    /markdown/$NAME.md \
    -o gathered-tmp.html

  mv gathered-tmp.html gathered/$NAME.html
  echo "<li><a href=gathered/$NAME.html>$NAME</a>" >> /source/index.html

done

echo "</ul>" >> /source/index.html
