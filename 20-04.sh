# fix PCIe error 
# https://askubuntu.com/questions/771899/pcie-bus-error-severity-corrected
# in /etc/default/gub set
# GRUB_CMDLINE_LINUX_DEFAULT="quiet splash pci=nomsi"
# then run 
# sudo update-grub

# postgres
# https://www.postgresql.org/download/linux/ubuntu/

# jdk
# https://adoptopenjdk.net/installation.html#linux-pkg

# apt update 
sudo apt update
# update ubuntu
sudo apt upgrade

sudo apt install -y baobab mc git-all gnome-tweak-tool xclip gnome-shell-extensions httpie jq vlc

udo add-apt-repository ppa:hluk/copyq
sudo apt update
sudo apt install -y copyq

#nvm node e.t.c frontend
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install 14.16.0
npm i -g lerna

# config

# autohide toopbar 
# https://ubuntuhandbook.org/index.php/2020/08/top-panel-auto-hide-ubuntu-20-04/
sudo apt install -y gnome-shell-extension-autohidetopbar
# restart gnom and enable “Hide Top Bar” in "Extensions" app

# show clocks on topbar
gsettings set org.gnome.desktop.interface clock-show-seconds true

#fix after hp drivers (hplip)  install
sudo mv /etc/xdg/autostart/hplip-systray.desktop /etc/xdg/autostart/hplip-systray.desktop.old
 
