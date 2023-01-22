#!/bin/bash

carpeta='gitrep'
mkdir ${carpeta} .config 
mkdir .fluxbox .termux .vnc 
cd ${carpeta}
git clone https://github.com/JhonAlexSB/Config
cd

#Enlaces simbolicos
#Bash
ln -s ${carpeta}/Config/Otros/Termux-Config/raiz/.tmux.conf .
ln -s ${carpeta}/Config/Otros/Termux-Config/raiz/.bashrc .
ln -s ${carpeta}/Config/Otros/Termux-Config/raiz/.profile .
cp ${carpeta}/Config/Otros/Termux-Config/raiz/.log.sh .
ln -s ${carpeta}/Config/raiz/.bashfunction .
ln -s ${carpeta}/Config/raiz/.bash_aliases .

# Vim
ln -s ${carpeta}/Config/raiz/.vim .
ln -s ${carpeta}/Config/raiz/.vimrc .

# Config i3
ln -s ../${carpeta}/Config/Otros/Termux-Config/raiz/.config/i3/ .config
ln -s ../${carpeta}/Config/Otros/Termux-Config/raiz/.config/i3status/ .config
ln -s ../${carpeta}/Config/config/Notas/ .config

# Fluxbox
ln -s ../${carpeta}/Config/Otros/Termux-Config/raiz/.fluxbox/apps .fluxbox/
ln -s ../${carpeta}/Config/Otros/Termux-Config/raiz/.fluxbox/keys .fluxbox/

# Vnc
ln -s ../${carpeta}/Config/Otros/Termux-Config/raiz/.vnc/xstartup .vnc/
ln -s ../${carpeta}/Config/Otros/Termux-Config/raiz/.vnc/config .vnc/

# Fish
ln -s ../${carpeta}/Config/Otros/Termux-Config/raiz/.config/fish/config.fish .config
ln -s ../${carpeta}/Config/Otros/Termux-Config/raiz/.config/fish/aliases.fish .config
ln -s ../${carpeta}/Config/Otros/Termux-Config/raiz/.config/fish/functions.fish .config

