#!bin/bash

cd /home/libor/.local/src/
git clone --depth=1 https://github.com/vim/vim.git
cd vim/src
make 

#Run tests to check there are no problems:
make test

#Install Vim in /usr/local:
sudo make --with-libncurses6 install

#Add X windows clipboard support (also needed for GUI):
make reconfig

