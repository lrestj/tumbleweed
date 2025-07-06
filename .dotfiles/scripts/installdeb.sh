#!/bin/bash

##### Debian Hyprland install #####

Apps="apt-listbugs ark autofs baobab breeze brightnessctl btop cliphist cmake curl eog evince fastfetch fd-find figlet firewalld firewall-config firewall-applet fish font-manager fonts-noto fonts-font-awesome foot geany gnome-calculator gnome-disk-utility grim gthumb gvfs-backends hyprland hyprland-protocols hyprwayland-scanner jq libgl1-mesa-dev libfuse2 libglib2.0-bin libnotify-bin libreoffice-gtk3 libreoffice-l10n-cs lxqt-policykit mako-notifier network-manager-applet nfs-common nwg-look pamixer pavucontrol power-profiles-daemon pipewire-audio pipewire-jack qt6ct sddm sddm-theme-elarun slurp swaybg swayidle swaylock thunar thunar-archive-plugin udiskie vainfo waybar wireplumber wl-clipboard wireplumber wlogout wlsunset wofi xdg-desktop-portal-hyprland xournalpp xwayland"


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
echo "Nfs shares and other config"
echo -e "\n"

# NFS mounts and grub and sddm conf:
sudo cp -rf /home/libor/.dotfiles/other/to-etc/auto.master auto.nfs sddm.conf.d/ /etc/
sudo cp -rf /home/libor/.dotfiles/other/to-etc/systemd/sleep.conf.d /etc/systemd/
sudo cp -rf /home/libor/.dotfiles/other/to-etc/grub.d/40_custom /etc/grub.d/

# git@github.com:lrestj/debian.git
# git@gitlab.com:lrestj/debian.git
# ssh://git@codeberg.org/lrestj/debian.git
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote remove origin
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote add github git@github.com:lrestj/debian.git
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote add gitlab git@gitlab.com:lrestj/debian.git
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote add codeberg ssh://git@codeberg.org/lrestj/debian.git
git config --global user.email "rest@seznam.cz"
git config --global user.name "LrestJ"

echo "Remote repos added"
echo -e "\n"
echo "Instalace kompletní" 


##### END OF FILE #####
