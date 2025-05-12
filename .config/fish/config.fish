if status is-interactive
    # Commands to run in interactive sessions can go here

abbr !! --position anywhere --function last_history_item
abbr gc 'cd ~/.dotfiles && git add . && git commit -m'
  abbr ga 'cd ~/.dotfiles && git add .'
  abbr ghp 'git push origin main'
  abbr gcl 'git clone git@github.com:lrestj/debian.git'
  abbr gs 'cd ~/.dotfiles && git status'
  abbr config '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

  abbr inst 'sudo apt install'
  abbr yay 'sudo apt update && sudo apt upgrade'
  abbr rem 'sudo apt remove'
  abbr clean 'sudo apt autoremove'
  abbr reb 'systemctl reboot'
  abbr update-grub 'sudo grub-mkconfig -o /boot/grub/grub.cfg'

end

