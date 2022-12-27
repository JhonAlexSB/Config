export lsc='--color=auto -F'
export dirs='--group-directories-first'
# some more ls aliases
alias lss='ls -lh  $lsc $dirs'
alias ll='ls -alF  $lsc $dirs'
alias la='ls -Ap $lsc $dirs'
alias l='ls -CFp $lsc $dirs'
alias ls='ls -CFp $lsc $dirs'
alias l.='ls -ap $lsc $dirs | grep -E "^\."'
alias l.s='ls -ap $lsc $dirs | grep -E "^\."'
alias fclist="fc-list | grep"

alias q="exit"
alias upbash="source ~/.bashrc"
alias vbash="vim ~/.bashrc"
alias valias="vim ~/.bash_aliases"
alias vfunc="vim ~/.bashfunction"
alias vconf="vim ~/.vimrc"
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias v="vim"
alias nv="nvim"
alias vncc='vncserver :0'
alias vnck='vncserver -kill '
alias vnca='vncserver -autokill'
alias vncl='vncserver -list'
alias vncr='rm -rf ~/../usr/tmp/.X0-lock ~/../usr/tmp/.X11-unix/X0'

# Python shorcuts
alias srca="source env/bin/activate"
alias srcd="deactivate"

# Termux shorcuts
alias protl="proot-distro login archlinux"
alias txon="termux-open"

alias jpgcomp="jpegoptim -m 30, 100"
alias pngcomp="pngquant --quality 30-50 --strip"

# Git shorcuts
alias gits='git status'
alias gitc='git commit -m'
alias gita='git add'
alias gitpush='git push origin'
alias gitpull='git pull origin'
alias gitlog='git log'
alias gitl='git log --decorate --oneline --graph'
alias git-l='git config -l'
alias screenoff='xset dpms force off | tee -a ~/.bashrc > /dev/null'
#-RawKeyboard

alias cl="clear"
alias p="pacman"
alias batp='bat -p'
alias nanon='nano -jlm' # jumpscreensize ,numbers ,mouse
alias mysqld='mysqld_safe -u root &'
alias transns='trans en:es '
alias transsn='trans es:en '
alias backuprcall="rclone sync -v sdcard/data/Udemy/ mydropbox:Udemy/; rclone sync -v sdcard/data/Platzi/ mydropbox:Platzi; rclone sync -v sdcard/data/Dropbox mydropbox:Dropbox; rclone sync -v sdcard/Pictures/Categorias/ mydropbox:img/categorias/"

alias songs="play /data/data/com.termux/files/home/storage/shared/Glue70.mp3"

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
alias rcsync="rclone sync -v"
alias ifc="ifconfig"
alias dirphp="cd /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/"

# find
alias fd="find -name"

# Print my public IP
alias pubip='curl ipinfo.io/ip' 

# Print time 
alias time='curl -s https://wttr.in/' 


alias lvi='live-server --host=127.0.0.1 --port=8080 --entry-file=index.html'


# >>>>> Remap
# Delete for word
# Src: https://unix.stackexchange.com/questions/27927/is-it-possible-to-configure-ctrl-w-delete-word
bind '\C-w:unix-filename-rubout'

# fzf wrappers
alias fzfcd='fzfcd() { cd "$(find -type d 2>/dev/null | fzf)" ;}; fzfcd'
alias fzfed='fzfed() { $EDITOR "$(find -type f 2>/dev/null | fzf)" ;}; fzfed'

