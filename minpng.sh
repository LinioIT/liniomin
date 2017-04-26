#!/usr/bin/env bash
if [ "$#" -ne 2 ]
then
  echo "Usage: minpng input.png output.png"
  exit 1
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PNGQUANT=$DIR/tools/pngquant/pngquant
ZOFPLI=$DIR/tools/zopfli/zopflipng
$PNGQUANT -f --quality 60 --speed 1 --strip --output $2 $1
$ZOFPLI -m -y --lossy_transparent --lossy_8bit $2 $2
