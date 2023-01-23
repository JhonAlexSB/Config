#!/bin/bash

carpeta='gitrep'
mkdir ${carpeta} .config 
mkdir .fluxbox .termux .vnc 
cd ${carpeta}
git clone https://github.com/JhonAlexSB/Config
cd

#Enlaces simbolicos
#Bash
ln -fs ${carpeta}/Config/Otros/Termux-Config/raiz/.tmux.conf .
ln -fs ${carpeta}/Config/Otros/Termux-Config/raiz/.bashrc .
ln -fs ${carpeta}/Config/Otros/Termux-Config/raiz/.profile .
cp ${carpeta}/Config/Otros/Termux-Config/raiz/.log.sh .
ln -fs ${carpeta}/Config/raiz/.bashfunction .
ln -fs ${carpeta}/Config/raiz/.bash_aliases .

# Vim
ln -fs ${carpeta}/Config/raiz/.vim .
ln -fs ${carpeta}/Config/raiz/.vimrc .

# Config i3
ln -fs ../${carpeta}/Config/Otros/Termux-Config/raiz/.config/i3/ .config
ln -fs ../${carpeta}/Config/Otros/Termux-Config/raiz/.config/i3status/ .config
ln -fs ../${carpeta}/Config/config/Notas/ .config

# Fluxbox
ln -fs ../${carpeta}/Config/Otros/Termux-Config/raiz/.fluxbox/apps .fluxbox/
ln -fs ../${carpeta}/Config/Otros/Termux-Config/raiz/.fluxbox/keys .fluxbox/

# Vnc
ln -fs ../${carpeta}/Config/Otros/Termux-Config/raiz/.vnc/xstartup .vnc/
ln -fs ../${carpeta}/Config/Otros/Termux-Config/raiz/.vnc/config .vnc/

# Fish
ln -fs ~/${carpeta}/Config/Otros/Termux-Config/config/fish/config.fish .config/fish
ln -fs ~/${carpeta}/Config/Otros/Termux-Config/config/fish/aliases.fish .config/fish
ln -fs ~/${carpeta}/Config/Otros/Termux-Config/config/fish/functions.fish .config/fish

