# fix PCIe error 
# https://askubuntu.com/questions/771899/pcie-bus-error-severity-corrected

# apt update 
sudo apt update
# update ubuntu
sudo apt upgrade

sudo apt install -y baobab mc git-all gnome-tweak-tool xclip gnome-shell-extensions httpie jq

udo add-apt-repository ppa:hluk/copyq
sudo apt update
sudo apt install -y copyq

#nvm node e.t.c frontend
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install 14.16.0
npm i -g lerna


