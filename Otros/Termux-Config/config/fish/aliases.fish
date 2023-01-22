# LS Shorcuts
alias lss 'ls -lh  --color  -F --group-directories-first'
alias ll 'ls -alF  --color  -F --group-directories-first'
alias la 'ls -Ap --color  -F --group-directories-first'
alias l 'ls -CFp --color -F --group-directories-first'
alias ls 'ls -CFp --color  -F --group-directories-first'
alias l. 'ls -ap --color  -F --group-directories-first | grep -E "^\."'
alias l.s 'ls -ap --color  -F --group-directories-first | grep -E "^\."'
alias fclist "fc-list | grep"

# config and moving Shorcuts
alias q "exit"
alias upfish "source ~/.config/fish/config.fish"
alias vfish "vim ~/.config/fish/config.fish"
alias valias "vim ~/.config/fish/aliases.fish"
alias vfunc "vim ~/.config/fish/functions.fish"
alias vconf "vim ~/.vimrc"
alias vnotes "vim ~/.config/Notas"
alias cd.. "cd .."
alias .. "cd .."
alias ... "cd ../../"
alias .... "cd ../../../"
alias ..... "cd ../../../../"
alias v "vim"
alias nv "nvim"

# Vnc Shorcuts
alias vncc 'vncserver :0'
alias vnck 'vncserver -kill '
alias vnca 'vncserver -autokill'
alias vncl 'vncserver -list'
alias vncr 'rm -rf ~/../usr/tmp/.X0-lock ~/../usr/tmp/.X11-unix/X0'


# Python Shortcuts
alias srca "source env/bin/activate"
alias srcd "deactivate"

# Termux Shorcuts
alias protl "proot-distro login archlinux"
alias txon "termux-open"

# Compress images Shorcuts 
alias jpgcomp "jpegoptim -m 30, 100"
alias pngcomp "pngquant --quality 30-50 --strip"

# Git Shorcuts
alias gits 'git status'
alias gitc 'git commit -m'
alias gita 'git add'
alias gitpush 'git push origin'
alias gitpull 'git pull origin'
alias gitlog 'git log'
alias gitl 'git log --decorate --oneline --graph'
alias git-l 'git config -l'
alias screenoff 'xset dpms force off | tee -a ~/.bashrc > /dev/null'
#-RawKeyboard

alias cl "clear"
alias p "python"
alias pc "pacman"
alias batp 'bat -p'
alias nanon 'nano -jlm' # jumpscreensize ,numbers ,mouse
alias mysqld 'mysqld_safe -u root &'
alias transns 'trans en:es '
alias transsn 'trans es:en '
alias backuprcall "rclone sync -v sdcard/data/Udemy/ mydropbox:Udemy/; rclone sync -v sdcard/data/Platzi/ mydropbox:Platzi; rclone sync -v sdcard/data/Dropbox mydropbox:Dropbox; rclone sync -v sdcard/Pictures/Categorias/ mydropbox:img/categorias/"

alias songs "play /data/data/com.termux/files/home/storage/shared/Glue70.mp3"

alias cpr "cp -r"
alias rmr "rm -rf"
alias rmd "rmdir"

alias df 'df -kTh'
alias free 'free -h'

alias scrcpycfg 'scrcpy -b 2M -m 1024 --max-fps 25'

# find
alias fd "find -name"
