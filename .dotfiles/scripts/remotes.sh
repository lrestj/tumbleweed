#!/bin/bash

##### REMOTE REPOS INIT #####

# git@github.com:lrestj/endos.git
# ssh://git@codeberg.org/lrestj/endos.git

git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote remove origin
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote add github git@github.com:lrestj/endos.git
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote add codeberg ssh://git@codeberg.org/lrestj/endos.git
git config --global user.email "rest@seznam.cz"
git config --global user.name "LrestJ"

echo "Codeberg and Github remote repos added"
echo -e "\n"
echo "END OF INSTALLATION" 


##### END OF FILE #####
