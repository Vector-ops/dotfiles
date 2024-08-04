#!/bin/zsh

for i in [SPOTIFY_DOWNLOADER.COM]*.png
do 
  mv -i -- "$i" "$(printf '%s\n' "$i" | sed '1s/^[SPOTIFY_DOWNLOADER.COM]//')"
done
