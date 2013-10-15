#firefox cache test
cd /home/vadim/.cache/mozilla/firefox/i2hjctik.default/Cache 
find -size +1M -exec cp {} ~/Downloads/muz/album \;

rename s/'$'/'.mp3'/ ~/Downloads/muz/album/*
