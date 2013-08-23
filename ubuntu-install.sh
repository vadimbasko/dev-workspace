#git init
#git clone https://github.com/vadimbasko/ubuntu.git
#git commit
#git push
#git pull origin master 

apt-get autoremove
apt-get purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy onboard

add-apt-repository ppa:diodon-team/stable
apt-get update
apt-get install diodon

apt-add-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
apt-get update
apt-get install skype
apt-get purge fonts-nanum

add-apt-repository ppa: webupd8team/sublime-text-3
apt-get update
apt-get install sublime-text-installer

apt-get install mc openssh-server xrdp

apt-get install gxneur aspell-ru
gsettings set com.canonical.Unity.Panel systray-whitelist "['all']"

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt-get update
apt-get install google-chrome-stable

apt-get install git 

mkdir /prj
chmod 777 /prj
mkdir /prj/ubuntu
