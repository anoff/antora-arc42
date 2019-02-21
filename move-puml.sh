#!/bin/sh
set -e

sourcedir=$(find . -type d -name "temp_image" | head -n 1)
targetdir=$(find . -type d -name "_images" | head -n 1)

if [ -z "$sourcedir" ] || [ -z "$targetdir" ]
then
  exit 0
fi

# echo "$sourcedir -> $targetdir"

mv -n $sourcedir/_images/** $targetdir

rmdir $sourcedir/_images
rmdir $sourcedir