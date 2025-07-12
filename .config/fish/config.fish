if status is-interactive
    # Commands to run in interactive sessions can go here

abbr !! --position anywhere --function last_history_item
abbr gc --set-cursor '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME commit -a -m "%"'
abbr ga '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME add'
abbr ghp '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push -u github main'
abbr glp '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push gitlab main'
abbr ppp '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push -u github main && /usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push gitlab main'
abbr gcl 'git clone --bare https://codeberg.org/lrestj/nixos.gi;wt'
abbr gs '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME status'

abbr cfg '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'

abbr in 'sudo zypper install'
abbr se 'zypper search'
abbr yay 'sudo zypper dup'
abbr rem 'sudo zypper remove --clean-deps'
abbr reb 'systemctl reboot'
abbr update-grub 'sudo grub2-mkconfig -o /boot/grub2/grub.cfg'

end

