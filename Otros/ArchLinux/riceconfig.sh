#!/bin/bash

# Reset path
cd ~
carpeta='gitrep'

if [ ! -d ~/gitrep/ ]; then
  mkdir -p ~/gitrep/
fi

cd ~/gitrep/

if [ ! -d ~/gitrep/Config/ ]; then
  git clone https://github.com/JhonAlexSB/Config
fi

cd ~/gitrep/Config

# '------//----- ' {seccion}
# Funciones
# '------//----- '

# '------//----- ' {seccion}
# Funcion1
# '------//----- '

seleccionar_distro() {

# https://stackoverflow.com/questions/27776665/echo-output-to-terminal-within-function-in-bash

  echo -e '\n------//----- ' >&2
  echo '1) Pacman' >&2
  echo '2) apt - get' >&2
  echo '3) otro, digite comando de instalacion' >&2
  echo -e '------//----- \n' >&2

  read -p "Por favor seleccione un manejador de paquetes: `echo $'\n> '`" num2

  if [ $num2 == 1 ]; then
    echo 'sudo pacman -S '
  elif [ $num2 == 2 ]; then
    echo 'apt install'
  elif [ $num2 == 3 ]; then
  read -p "Digite comando instalacion ej: 'sudo pacman -S ': `echo $'\n> '`" num3
  echo $num3
  fi
}

# '------//----- ' {seccion}
# Funcion2
# '------//----- '

crear_rutas() {

## Enlaces simbolicos
## Bash
##
ln -fs ${carpeta}/Config/Otros/Termux-Config/raiz/.tmux.conf ~/
ln -fs ${carpeta}/Config/Otros/Termux-Config/raiz/.bashrc ~/
ln -fs ${carpeta}/Config/Otros/Termux-Config/raiz/.profile ~/
ln -fs ${carpeta}/Config/raiz/.bashfunction ~/
ln -fs ${carpeta}/Config/raiz/.bash_aliases ~/

## Vim
##
if [ ! -d ~/.config/vim ]; then
  ln -fs ~/${carpeta}/Config/config/vim ~/.config
fi

ln -fs ~/${carpeta}/Config/raiz/.vim ~/
ln -fs ~/${carpeta}/Config/raiz/.vimrc ~/

### Config i3
##
if [ ! -d ~/.config/fish ]; then
  mkdir  ~/.config/fish
fi

ln -fs ~/${carpeta}/Config/config/i3/ ~/.config
ln -fs ~/${carpeta}/Config/config/i3blocks/ ~/.config
ln -fs ~/${carpeta}/Config/config/Notas/ ~/.config


### Fish 
## first create folder or execute fish once after of create symbol links 
ln -fs ~/${carpeta}/Config/Otros/Termux-Config/config/fish/config.fish ~/.config/fish
ln -fs ~/${carpeta}/Config/Otros/Termux-Config/config/fish/aliases.fish ~/.config/fish
ln -fs ~/${carpeta}/Config/Otros/Termux-Config/config/fish/functions.fish ~/.config/fish

### Other programs
##
if [ ! -d ~/.config/ranger ]; then
  ln -fs ~/${carpeta}/Config/config/ranger/ ~/.config
fi

ln -fs ~/${carpeta}/Config/config/dunst/ ~/.config
ln -fs ~/${carpeta}/Config/config/cmus/ ~/.config
ln -fs ~/${carpeta}/Config/config/vlc/ ~/.config
ln -fs ~/${carpeta}/Config/config/vlc/ ~/.config
ln -fs ~/${carpeta}/Config/config/zathura/ ~/.config
ln -fs ~/${carpeta}/Config/config/nvim/ ~/.config
ln -fs ~/${carpeta}/Config/config/picom.conf ~/.config
ln -fs ~/${carpeta}/Config/config/compton.conf ~/.config

if [ ! -d ~/.config/gtk-3.0 ]; then
  ln -fs ~/${carpeta}/Config/config/gtk-3.0/ ~/.config
else
  ln -fs ~/${carpeta}/Config/config/gtk-3.0/bookmarks ~/.config/gtk-3.0/
  ln -fs ~/${carpeta}/Config/config/gtk-3.0/settings.ini ~/.config/gtk-3.0/
fi

if [ ! -e ~/.vim/autoload/plug.vim ]; then
  eval 'curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

if [ ! -e ~/.local/share/nvim/site/autoload/plug.vim ]; then
  eval "sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'"
fi

echo -e '\nEnlaces Creados o Atualizados con exito >.<' >&2

}

# '------//----- ' {seccion}
# Funcion3
# '------//----- '

crear_wallpaper(){
  if [ ! -e ~/.wallpaper/Jinx/1193347.jpg ]; then
    if [ ! -d ~/.wallpaper/ ]; then
      mkdir ~/.wallpaper/
      if [ ! -d ~/.wallpaper/Jinx/ ]; then
        mkdir ~/.wallpaper/Jinx/
      fi
    fi


    cd ~/.wallpaper/Jinx/
    eval $opt
    wget 'https://images6.alphacoders.com/119/1193347.jpg'
  fi
}

# '------//----- ' {seccion}
# Codigo Principal
# '------//----- '

echo -e '\n------//----- '
echo '1) Basica de i3 '
echo '2) Complementaria de i3 '
echo '3) Enlaces simbolicos'
echo '4) Apps yay'
echo '*) Salir '
echo -e '------//----- \n'

# https://stackoverflow.com/questions/4296108/how-do-i-add-a-line-break-for-read-command

read -p "Por favor seleccione una opcion de instalacion: `echo $'\n> '`" num1

# opt = variable de ejecucion de instalacion segun gestor de paquetes

# https://stackoverflow.com/questions/2355148/run-a-string-as-a-command-within-a-bash-script
  case "$num1" in
      "1")
        opt=$(seleccionar_distro)
        eval $opt ' feh i3-wm i3blocks scrot rofi ttf-font-awesome picom fish arandr '
        eval $opt ' cmus mpv tmux ncdu dunst '
          ;;
      "2")
        opt=$(seleccionar_distro)
        eval $opt ' brightnessctl xfce4-screenshooter rclone gvim neovim nodejs '
        eval $opt ' htop nemo xclip'
          ;;
      "3")
        crear_rutas
        crear_wallpaper
          ;;
      "4")
        eval 'yay -S brave espeak translate-shell-git'
          ;;
      *)
        echo "Opcion invalida"
        ;;
  esac

# Source

#https://devhints.io/bash
#https://askubuntu.com/questions/1705/how-can-i-create-a-select-menu-in-a-shell-script
#
#
#https://linuxize.com/post/bash-select/
#https://stackoverflow.com/questions/1728683/case-insensitive-comparison-of-strings-in-shell-script
#https://stackoverflow.com/questions/17336915/return-value-in-a-bash-function
