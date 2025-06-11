##### Debian Hyprland install #####

#!/bin/bash

Apps = " hyprland nfs-common waybar gvfs-backends network-manager-applet udiskie swaybg wlsunset breeze brightnessctl pamixer geany wofi wlogout cliphist wl-clipboard mako hyprland-protocols hyprwayland-scanner grim slurp swayidle swaylock libglib2.0-bin lxqt-policykit pcmanfm-qt libfuse2 libnotify-bin"


sudo apt update && sudo apt upgrade
echo "Instalace balíčků..."
sudo apt install $Apps &&
echo "Instalace dokončena"
sleep 3
echo "Kopíruji konfiguraci z repozitáře"
#alias cfg='git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME' &&
echo ".cfg.git" >> .gitignore
git clone --bare https://codeberg.org/lrestj/debian.git $HOME/.cfg.git &&
#alias cfg='git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME' &&
git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME checkout -f
git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME config --local status.showUntrackedFiles no
echo "Konfigurace z repozitáře kompletní"
echo -e "\n"
echo "Nastavení swap"
echo vm.swappiness=10 | sudo tee /etc/sysctl.d/99-swappiness.conf
echo -e "\n"
echo "Synology nfs shares"
echo -e "\n"

sudo systemctl enable --now nfs-client.target

sudo systemctl enable --now NetworkManager-wait-online.service


#Ověřit:

showmount -e 192.168.77.18



#mounts


sudo mkdir -p /data/nfs/FilmyNas /data/nfs/HudbaNas /data/nfs/Nas &&

sudo chmod -R ugo+rwx /data/nfs

sudo mount -t nfs 192.168.77.18:/volume1/Rodinas /data/nfs/Nas

sudo mount -t nfs 192.168.77.18:/volume1/Hudba /data/nfs/HudbaNas

sudo mount -t nfs 192.168.77.18:/volume1/Filmy /data/nfs/FilmyNas

#add to fstab:
sudo cp /etc/fstab /etc/fstab.bak

cd ~/.dotfiles/scripts/
cat 3fstabnfs | sudo tee -a /etc/fstab
echo -e "\n"

echo "Připojení Nas Synology proběhlo úspěšně"
echo "Soubor fstab nyní vypadá takto:"
echo "-------------------------------------------------------------------------"
echo -e "\n"
cat /etc/fstab

echo -e "\n"
echo "-------------------------------------------------------------------------"
 s

# git@github.com:lrestj/debian.git
# ssh://git@codeberg.org/lrestj/debian.git

git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote remove origin
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote add github git@github.com:lrestj/debian.git
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote add codeberg ssh://git@codeberg.org/lrestj/debian.git
git config --global user.email "rest@seznam.cz"
git config --global user.name "LrestJ"

echo "Codeberg and Github remote repos added"
echo -e "\n"
echo "END OF INSTALLATION" 


##### END OF FILE #####
