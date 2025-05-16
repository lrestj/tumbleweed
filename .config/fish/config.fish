if status is-interactive
    # Commands to run in interactive sessions can go here

abbr !! --position anywhere --function last_history_item
abbr gc --set-cursor '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME commit -a -m "%"'
abbr ga '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME add'
abbr ghp '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push -u origin main'
abbr gcl 'git clone git@github.com:lrestj/debian.git'
abbr gs '/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME status'

abbr cfg '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

abbr inst 'sudo apt install'
abbr yay 'sudo apt update && sudo apt upgrade'
abbr rem 'sudo apt remove'
abbr clean 'sudo apt autoremove'
abbr reb 'systemctl reboot'
abbr update-grub 'sudo grub-mkconfig -o /boot/grub/grub.cfg.git'

end

