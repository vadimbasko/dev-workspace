# updates

# drivers

#huawei modem fix
#sudo usb_modeswitch -v 12d1 -p 1f01 -J 
#lsusb 

#tools
sudo apt install -y mc

# CopyQ
sudo add-apt-repository ppa:hluk/copyq -y
sudo apt update
sudo apt install -y copyq

sudo add-apt-repository ppa:webupd8team/java && sudo apt update
sudo apt install oracle-java8-installer
