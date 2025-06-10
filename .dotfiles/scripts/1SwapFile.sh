#!/bin/bash

#Remove or edit the swap file:

#sudo swapoff -v /swapfile

#sudo rm /swapfile


echo vm.swappiness=10 | sudo tee /etc/sysctl.d/99-swappiness.conf

# sudo fallocate -l 2G /swapfile &&

# sudo chmod 600 /swapfile &&

# sudo mkswap /swapfile &&

# sudo swapon /swapfile

# sudo nano /etc/fstab

#In the fstab file, add the following line:    /swapfile swap swap defaults 0 0

