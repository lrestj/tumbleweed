#!/bin/bash

##### Debian Hyprland install #####

Apps="apt-listbugs ark autofs baobab breeze brightnessctl btop cliphist cmake curl eog evince fastfetch fd-find figlet firewalld firewall-config firewall-applet fish font-manager fonts-noto fonts-font-awesome foot geany gnome-calculator gnome-disk-utility grim gthumb gvfs-backends hyprland hyprland-protocols hyprwayland-scanner jq libfuse2 libglib2.0-bin libnotify-bin libreoffice-gtk3 libreoffice-l10n-cs lxqt-policykit mako-notifier network-manager-applet nfs-common nwg-look pamixer pavucontrol power-profiles-daemon pipewire pipewire-audio-client-libraries pulseaudio pulseaudio-module-gsettings pulseaudio-module-jack qt6ct sddm sddm-theme-elarun slurp swaybg swayidle swaylock thunar thunar-archive-plugin udiskie vainfo waybar wl-clipboard wireplumber wlogout wlsunset wofi xournalpp xwayland"


sudo apt update && sudo apt upgrade
echo "Instalace balíčků..."
sudo apt install $Apps &&
echo "Instalace dokončena"
sleep 3
echo "Kopíruji konfiguraci z repozitáře"
echo ".cfg.git" >> .gitignore
git clone --bare https://github.com/lrestj/debian.git /home/libor/.cfg.git
# git clone --bare https://gitlab.com/lrestj/debian.git &&

git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME checkout -f
# git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME config --local status.showUntrackedFiles no
echo "Konfigurace z repozitáře kompletní"
echo -e "\n"
echo "Nastavení swap"
echo vm.swappiness=10 | sudo tee /etc/sysctl.d/99-swappiness.conf
echo -e "\n"
# echo "Synology nfs shares"
# echo -e "\n"

#NFS mounts:
#sudo systemctl enable --now nfs-client.target
#sudo systemctl enable --now NetworkManager-wait-online.service
#showmount -e 192.168.77.18

#sudo mkdir -p /data/nfs/FilmyNas /data/nfs/HudbaNas /data/nfs/Nas &&
#sudo chmod -R ugo+rwx /data/nfs
#sudo mount -t nfs 192.168.77.18:/volume1/Rodinas /data/nfs/Nas
#sudo mount -t nfs 192.168.77.18:/volume1/Hudba /data/nfs/HudbaNas
#sudo mount -t nfs 192.168.77.18:/volume1/Filmy /data/nfs/FilmyNas

##add to fstab:
#sudo cp /etc/fstab /etc/fstab.bak
#cd ~/.dotfiles/scripts/
#cat 3fstabnfs | sudo tee -a /etc/fstab
#echo -e "\n"

#echo "Připojení Nas Synology proběhlo úspěšně"
#echo "Soubor fstab nyní vypadá takto:"
#echo "-------------------------------------------------------------------------"
#echo -e "\n"
#cat /etc/fstab

#echo -e "\n"
#echo "-------------------------------------------------------------------------"

# git@github.com:lrestj/debian.git
# ssh://git@codeberg.org/lrestj/debian.git

git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote remove origin
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote add github git@github.com:lrestj/debian.git
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote add gitlab git@gitlab.com:lrestj/debian.git
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote add codeberg ssh://git@codeberg.org/lrestj/debian.git
git config --global user.email "rest@seznam.cz"
git config --global user.name "LrestJ"

echo "Codeberg and Github remote repos added"
echo -e "\n"
echo "Instalace kompletní" 


##### END OF FILE #####
