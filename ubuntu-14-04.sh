sudo add-apt-repository --yes ppa:diodon-team/stable
sudo add-apt-repository --yes ppa:webupd8team/sublime-text-3
#equalizer
sudo add-apt-repository ppa:nilarimogard/webupd8 
#java
sudo add-apt-repository ppa:webupd8team/java

sudo apt-get update

sudo apt-get -y install compizconfig-settings-manager gthumb mc vlc sublime-text-installer diodon audacious pinta
 
sudo apt-get -y remove totem rhythmbox

#skype tray icon
sudo apt-get install sni-qt:i386

#equalizer
sudo apt-get install pulseaudio-equalizer

#java
sudo apt-get install oracle-java8-installer

#gyazo
curl -s https://packagecloud.io/install/repositories/gyazo/gyazo-for-linux/script.deb.sh | sudo bash
sudo apt-get install gyazo

#caffeine
sudo apt-add-repository ppa:caffeine-developers/ppa
sudo apt-get update
sudo apt-get install caffeine

#stand by sda disk
#sudo hdparm -B -Y /dev/sda

#shutdown window 
#gnome-session-quit --power-off --force

#pulseaudio set port on startup
#pacmd set-sink-port 0 analog-output-headphones

#force monitor off
#xset dpms force off
