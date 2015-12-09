add-apt-repository --yes ppa:diodon-team/stable
add-apt-repository --yes ppa:webupd8team/sublime-text-3

sudo apt-get update

sudo apt-get -y install compizconfig-settings-manager gthumb mc vlc sublime-text-installer diodon
 
sudo apt-get -y remove totem

#stand by sda disk
#sudo hdparm -B -Y /dev/sda

#shutdown window 
#gnome-session-quit --power-off --force
