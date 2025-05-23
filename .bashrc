## ##  BASH CONFIG  #####


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# BASH PROMPT LOOK	
   # Black:30  Blue:34  Cyan:36   Green:32   Purple:35   Red:31   White:37   Yellow:33
PS1='\[\033[1;31m\][\[\033[1;33m\]\u\[\033[1;00m\]@\[\033[1;34m\]\h \[\033[1;00;m\]\w\[\033[1;31m\]]\[\033[00m\]\$ '


alias sss='sudo $(history -p !!)'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias inst='sudo apt install'
alias yay='sudo apt update && sudo apt upgrade'
alias rem='sudo apt remove'
alias clean='sudo apt autoremove'
alias reb='systemctl reboot'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

alias cfg='git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'
alias ga='git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME add'
alias gc='git --git-dir $HOME/.cfg.git/ --work-tree=$HOME commit -a -m'
alias ghp='git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push -u github main'
alias cbp='git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push codeberg main'
alias ppp='git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor push -u github main && git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor push codeberg main'

alias gcl='git clone --bare https://codeberg.org/lrestj/nixos.git'
alias gs='git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME status'
alias str='git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor log --pretty=format: --name-only --diff-filter=A '
alias untrack='git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME update-index --skip-worktree'

alias config='git --git-dir=/home/libor/.cfg/ --work-tree=/home/libor'

 
#####  END OF FILE  #####
