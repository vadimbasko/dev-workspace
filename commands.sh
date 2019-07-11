#ubuntu version
lsb_release -a

#package version
apt-cache policy <PACKAGE>


#aliases in ~/.bashrc
echo "# aliases" | tee -a ~/.bashrc
echo "alias gg='gradle'" | tee -a ~/.bashrc

#postgres
 sudo -u postgres psql -U postgres -d <DATABASE>
 sudo -u postgres psql -U postgres -d <DATABASE> -f dump/<DB DUMP>.sql
 
 #reload .bashrc
 . ~/.bashrc
 
 #clean swap
 sudo swapoff -a && sudo swapon -a
 
 #disk usage
 df -h /dev/sda3
 
 #get memory info
 sudo dmidecode --type 17 

#delete git local branches
git branch | grep -v "master" | xargs git branch -D

#add script to sudoers
sudo tee -a /etc/sudoers 'MYUSERNAME ALL = NOPASSWD: /path/to/my/program' 



