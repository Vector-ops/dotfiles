!#/bin/zsh

for (( w=1; w<934; w++ ))

do

curl -LOS "https://raw.githubusercontent.com/whoisYoges/lwalpapers/PicturesOnly/wallpapers/$(printf b-%0.3d.jpg "$w")"

done
