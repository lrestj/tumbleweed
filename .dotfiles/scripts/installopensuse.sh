#!/bin/bash

##### Debian Hyprland install #####

Apps="autofs baobab breeze brightnessctl btop cliphist cmake curl eog evince fastfetch fd figlet firewalld firewall-config firewall-applet fish file-roller font-manager fontawesome-fonts foot geany gnome-calculator gnome-disk-utility google-noto-coloremoji-fonts google-noto-fonts grim gthumb gvfs-backends hyprland hyprland-qt-support hyprland-qtutils hyprwayland-scanner intel-media-driver jq Mesa-libGL1 libfuse2 libnotify libreoffice-gtk3 libreoffice-l10n-cs lxqt-policykit mako NetworkManager NetworkManager-applet nfs-utils nwg-look opi pamixer pavucontrol power-profiles-daemon pipewire pipewire-jack qt6ct slurp swaybg swayidle swaylock symbols-only-nerd-fonts thunar thunar-archive-plugin udiskie libva-utils waybar wireplumber wl-clipboard wireplumber wlogout wlsunset wofi xdg-desktop-portal-hyprland xdg-user-dirs xournalpp xwayland yazi"


echo "Instalace balíčků..."
sudo zypper install --no-recommends $Apps &&
echo "Instalace dokončena"
sleep 3
echo "Kopíruji konfiguraci z repozitáře"
echo ".cfg.git" >> .gitignore
git clone --bare https://github.com/lrestj/opensuse.git /home/libor/.cfg.git
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
sudo cp -rf /home/libor/.dotfiles/other/to-etc/auto.master /etc/
sudo cp -rf /home/libor/.dotfiles/other/to-etc/auto.nfs /etc/
sudo cp -rf /home/libor/.dotfiles/other/to-etc/sddm.conf.d /etc/
sudo cp -rf /home/libor/.dotfiles/other/to-etc/systemd/sleep.conf.d /etc/systemd/
sudo cp -rf /home/libor/.dotfiles/other/to-etc/grub.d/40_custom /etc/grub.d/
sudo cp -rf /home/libor/.dotfiles/other/to-etc/systemd-system/getty@tty1.service.d/* /etc/systemd/system/ 

# git@github.com:lrestj/tumbleweed.git
# git@gitlab.com:lrestj/tumbleweed.git
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote remove origin
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote add github git@github.com:lrestj/opensuse.git
git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor remote add gitlab git@gitlab.com:lrestj/opensuse.git
git config --global user.email "rest@seznam.cz"
git config --global user.name "LrestJ"

echo "Remote repos added"
echo -e "\n"
echo "Instalace kompletní" 


##### END OF FILE #####
