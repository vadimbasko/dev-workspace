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



