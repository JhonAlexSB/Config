# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Print my public IP
alias pubip='curl ipinfo.io/ip' 

# Print time 
alias time='curl -s https://wttr.in/' 

alias q="exit"
alias upbash="source /etc/bash.bashrc"
alias vbash="vim /etc/bash.bashrc"
alias valias="vim ~/.bash_aliases"
alias vconf="vim ~/.vimrc"
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias v="vim"
alias nv="nvim"
alias vnc="vncserver :0 "
 
alias srca="source env/bin/activate"
alias srcd="deactivate"


alias protl="proot-distro login archlinux"


#-RawKeyboard

alias cl="clear"
alias p="pacman"

alias gits='git status'
alias gitc='git commit -m'
alias gita='git add'
alias gitpull='git push origin'
alias gitpush='git pull origin'
alias batp='bat -p'

# Copiado, Movido y borrado recursivo
alias mvr="mv -r"
alias cpr="cp -r"
alias rmr="rm -rf"
alias rmd="rmdir"

alias df='df -kTh'
alias free='free -h'

mkcd ()
{
mkdir -p -- "$1" && cd -P -- "$1"
}
