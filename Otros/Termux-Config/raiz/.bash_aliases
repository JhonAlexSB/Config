export lsc='--color=auto -F'
# some more ls aliases
alias lss='ls -lh  $lsc'
alias ll='ls -alF  $lsc'
alias la='ls -Ap $lsc'
alias l='ls -CFp $lsc'
alias ls='ls -CFp $lsc'
alias l.='ls -ap $lsc | egrep "^\."'
alias fclist="fc-list | grep"

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
 
# Python shorcuts
alias srca="source env/bin/activate"
alias srcd="deactivate"

# Termux shorcuts
alias protl="proot-distro login archlinux"

# Git shorcuts
alias gits='git status'
alias gitc='git commit -m'
alias gita='git add'
alias gitpush='git push origin'
alias gitpull='git pull origin'
alias gitlog='git log'
alias gitl='git log --decorate --oneline --graph'

#-RawKeyboard

alias cl="clear"
alias p="pacman"
alias batp='bat -p'


# Copiado, Movido y borrado recursivo
alias cpr="cp -r"
alias rmr="rm -rf"
alias rmd="rmdir"

alias df='df -kTh'
alias free='free -h'

alias scrcpycfg='scrcpy -b 2M -m 1024 --max-fps 25'




# >>>>>> Internet o urls
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -"
alias extip="curl icanhazip.com"
alias ip="curl ipinfo.io"

# find
alias fd="find -name"

# Print my public IP
alias pubip='curl ipinfo.io/ip' 

# Print time 
alias time='curl -s https://wttr.in/' 

# >>>>> Remap
# Delete for word
# Src: https://unix.stackexchange.com/questions/27927/is-it-possible-to-configure-ctrl-w-delete-word
bind '\C-w:unix-filename-rubout'


# >>>>>> Functions
mkcd ()
{
mkdir -p -- "$1" && cd -P -- "$1"
}

# Automatically do an ls after each cd
cd() {
  if [ -n "$1" ]; then
    builtin cd "$@" && ls --group-directories-first
  else
    builtin cd ~ && ls --group-directories-first
  fi
}

## COMPRESSION FUNCTION ##
function compress() {
   # credit goes to: daenyth
   FILE=$1
   shift
   case $FILE in
      *.tar.bz2) tar cjf $FILE $*  ;;
      *.tar.gz)  tar czf $FILE $*  ;;
      *.tgz)     tar czf $FILE $*  ;;
      *.zip)     zip $FILE $*      ;;
      *.rar)     rar $FILE $*      ;;
      *)         echo "Filetype not recognized" ;;
   esac
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

# Color man pages
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
      man "$@"
}

# fzf wrappers
alias fzfcd='fzfcd() { cd "$(find -type d 2>/dev/null | fzf)" ;}; fzfcd'
alias fzfed='fzfed() { $EDITOR "$(find -type f 2>/dev/null | fzf)" ;}; fzfed'

