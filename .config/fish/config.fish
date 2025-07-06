if status is-interactive
    # Commands to run in interactive sessions can go here

abbr !! --position anywhere --function last_history_item
abbr gc --set-cursor '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME commit -a -m "%"'
abbr ga '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME add'
abbr ghp '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push -u github main'
abbr cbp '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push codeberg main'
abbr ppp '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push -u github main && /usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push gitlab main'
abbr gcl 'git clone --bare https://codeberg.org/lrestj/nixos.gi;wt'
abbr gs '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME status'

abbr cfg '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'

abbr inst 'sudo zypper install'
abbr yay 'sudo zypper dup'
abbr rem 'sudo zypper remove'
abbr clean 'bash /home/libor/.dotfiles/scripts/cleanzypper.sh'
abbr reb 'systemctl reboot'
abbr update-grub 'sudo grub-mkconfig -o /boot/grub/grub.cfg'

end

