#!/usr/bin/env bash
if [ "$#" -ne 2 ]
then
  echo "Usage: minpng input.png output.png"
  exit 1
fi

PNGQUANT=tools/pngquant/pngquant
ZOFPLI=tools/zopfli/zopflipng
$PNGQUANT --quality 60 --speed 1 --strip --output $2 $1
$ZOFPLI -m $2 $2
