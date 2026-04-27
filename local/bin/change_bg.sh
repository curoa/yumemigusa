#!/bin/bash
IMG_DIR=$HOME/Pictures/image/terminatorbg
RANDOM_IMG=$(find "$IMG_DIR" -type f | shuf -n 1)
# configファイルのbackground_imageの行を置換
sed -i "s|^    background_image = .*|    background_image = $RANDOM_IMG|" ~/.config/terminator/config
#echo $RANDOM_IMG

