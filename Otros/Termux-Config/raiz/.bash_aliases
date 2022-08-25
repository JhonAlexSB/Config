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

alias scrcpycfg='scrcpy -b 2M -m 1024 --max-fps 25'

mkcd ()
{
mkdir -p -- "$1" && cd -P -- "$1"
}

# Extract archive
function extract {
    if [ -z "$1" ]; then
        echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    else
        if [ -f $1 ] ; then
            case $1 in
                *.tar.bz2)   tar xvjf ./$1    ;;
                *.tar.gz)    tar xvzf ./$1    ;;
                *.tar.xz)    tar xvJf ./$1    ;;
                *.lzma)      unlzma ./$1      ;;
                *.bz2)       bunzip2 ./$1     ;;
                *.rar)       unrar x -ad ./$1 ;;
                *.gz)        gunzip ./$1      ;;
                *.tar)       tar xvf ./$1     ;;
                *.tbz2)      tar xvjf ./$1    ;;
                *.tgz)       tar xvzf ./$1    ;;
                *.zip)       unzip ./$1       ;;
                *.Z)         uncompress ./$1  ;;
                *.7z)        7z x ./$1        ;;
                *.xz)        unxz ./$1        ;;
                *.exe)       cabextract ./$1  ;;
                *)           echo "extract: '$1' - unknown archive method" ;;
            esac
        else
            echo "$1 - file does not exist"
        fi
    fi
}
