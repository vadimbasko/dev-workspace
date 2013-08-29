#git init
#git clone https://github.com/vadimbasko/ubuntu.git
#git commit
#git push
#git pull origin master 

#mkdir /prj
#chmod 777 /prj
#mkdir /prj/ubuntu

apt-get -y autoremove
apt-get -y purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy onboard

#skype repository
add-apt-repository --yes "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
#google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

add-apt-repository --yes ppa:diodon-team/stable webupd8team/sublime-text-3
apt-get update

apt-get -y install skype diodon sublime-text-installer git gitk gxneur aspell-ru google-chrome-stable
apt-get -y purge fonts-nanum mc openssh-server xrdp 

apt-get install vnstat

#configuration - show xneural icon on tray
gsettings set com.canonical.Unity.Panel systray-whitelist "['all']"

