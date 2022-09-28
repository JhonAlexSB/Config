#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bashfunction ]; then
    . ~/.bashfunction
fi

if [ -f ~/.log.sh ]; then
    . ~/.log.sh
fi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

#  Setup Bash prompt
shopt -s checkwinsize

if [ "$(id -u)" = "0" ]; then
	base_color="${BRed}"
else
	base_color="${BBlue}"
fi

# Define color variables
Color_Off='\[\033[0m\]'         # Text Reset

# Regular Colors
Black='\[\033[0;30m\]'    # Black
Red='\[\033[0;31m\]'      # Red
Green='\[\033[0;32m\]'    # Green
Yellow='\[\033[0;33m\]'   # Yellow
Blue='\[\033[0;34m\]'     # Blue
Purple='\[\033[0;35m\]'   # Purple
Cyan='\[\033[0;36m\]'     # Cyan
White='\[\033[0;37m\]'    # White

# Bold
BBlack='\[\033[1;30m\]'   # Black
BRed='\[\033[1;31m\]'     # Red
BGreen='\[\033[1;32m\]'   # Green
BYellow='\[\033[1;33m\]'  # Yellow
BBlue='\[\033[1;34m\]'    # Blue
BPurple='\[\033[1;35m\]'  # Purple
BCyan='\[\033[1;36m\]'    # Cyan
BWhite='\[\033[1;37m\]'   # White


LS_COLORS='no=00:fi=00:di=01;30:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.svgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01; 35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:'

export LS_COLORS

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='\[\e[0m\]\u\[\e[0m\][\[\e[0m\]\W$(parse_git_branch)\[\e[0m\]]\[\e[0m\]> \[\e[0m\]'
#PS1="\[\033[01;32m\]\u@\h {\[\033[01;34m\]\w\$(parse_git_branch)\[\033[01;32m\]} \[\033[01;34m\]\$\[\033[00m\] "

# Urxvt cursor
# cursor bar with blink
echo -e "\033[5 q"
# cursor bar without blink
#echo -e "\033[6 q"

# Display code error
# https://stackoverflow.com/questions/16715103/bash-prompt-with-the-last-exit-code

PROMPT_COMMAND=__prompt_command

__prompt_command() {
    local curr_exit="$?"

    local BGreen='\[\e[0;32m\]'
    local BRed='\[\e[0;91m\]'
    local RCol='\[\e[0m\]'


    PS1='\[\e[0m\]\u\[\e[0m\][\[\e[0m\]\W$(parse_git_branch)\[\e[0m\]]\[\e[0m\]> \[\e[0m\]'

    if [ "$curr_exit" != 0 ]; then
        # CodError
        #PS1="[${BRed}$curr_exit${RCol}]$PS1"
        PS1="\n${BRed}/\ ${RCol}$PS1"
    else
      PS1="\n${BGreen}/\ ${RCol}$PS1"
    fi
}

