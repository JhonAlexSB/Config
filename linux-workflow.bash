--------
--------Instalacion Programas Consola 
--------

# Para trabajar
apt install nvim git nodejs rar

# Visualizacion hardaware y archivos
apt install neofetch screenfetch zathura

# Herramientas de terminal y monitoreo
apt install psensor htop nmap cmus mpv ranger

# Visualisacion de celular
apt install scrcpy

# Virtualizacion
apt install wine virtualbox 

# Edicion Imagen
apt install gimp krita

# Edicion de video
apt install kdenlive

# Edicion de Audio
apt install audacity ffmpeg rhythmbox soundkonverter

# Sistema
apt install i3 zsh tmux pavucontrol keynav

# Gestor de descargas
apt install uget aria2 tilix

# Transferencia de archivos
apt install nitroshare filezilla ftp 

# Terminal fondo
apt install cmatrix 

# Visualizacion de multimedia
apt install vlc mpv

# Grabar pantalla y pulsacion de teclas
apt install vokoscreenNG screenkey

# Backups
apt install timeshift

# Juegos
apt install frogatoo bsdgames

programas
----------------
--------Instalacion Programas Tienda
----------------
zeal
discord
alacrity
klavaro
soundkonverter


----------------
--------Configuracion 
----------------

----Archivos de configuracion
--------
Usar guia Mover Archivos de Ajustes


###Zsh 
----------------
--Verificar instalacion
zsh --version

--Cambiar shell a zsh en lugar de bash
chsh -s $(which zsh)


###Oh My Zsh 
----------------
--Instalar
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
--Actualizar bash
source ~/.bashrc


###Vim Plug 
-----Nvim Plug
rr a la pagina de plug https://github.com/junegunn/vim-plug y copiar el curl
o el sh -c en terminal


###Zeal
----------------
-Por defecto los archivos de zeal van en la ruta
~/.var/app/org.zealdocs.Zeal/data/Zeal/Zeal/docsets/


###Zathura
----------------
sudo apt install zathura-pdf-mupdf 
sudo add-apt-repository ppa:spvkgn/zathura-mupdf


###Traductor terminal
----------------
apt install gawk -y
wget git.io/trans
chmod +x trans


### Retroarch
----------------
https://docs.libretro.com/guides/download-cores/#installing-cores-through-package-manager-ubuntu-ppa-only
/install ppa

/install retro arch

/install cores desde consola
sudo apt install libretro-
/Presionar tap hasta encontrar el core deseado


### Ps3 Controller
----------------
apt install xboxdrv

sudo xboxdrv --detach-kernel-driver
http://gameimps.com/ps3-controller-linux-usb-290

Other Resources
jscal can be used to remap buttons, but it’s a little unwieldy.
jstest-gtk is an app you can use to test that the controller is working.
xboxdrv home page
