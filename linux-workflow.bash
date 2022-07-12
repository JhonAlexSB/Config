--------
--------Instalacion Programas Consola 
--------

# Para quemar discos DvD
apt install devede brasero

# Para trabajar
apt install nvim git nodejs rar

# Visualizacion hardaware y archivos
apt install neofetch screenfetch zathura

# Herramientas de terminal y monitoreo
apt install psensor htop nmap cmus mpv ranger

# Visualisacion de celular
apt install scrcpy

# La tasa de bits por defecto es de 8 Mbps. Para cambiar la tasa de bits de vídeo (por ejemplo, a 2 Mbps): 
scrcpy --bit-rate 2M
scrcpy -b 2M  # versión corta

# Se puede limitar la tasa de fotogramas de captura: 
scrcpy --max-fps 15

# Limitar la anchura y la altura a algún valor (por ejemplo, 1024):
scrcpy --max-size 1024
scrcpy -m 1024  # versión corta

# La velocidad de fotogramas real de la captura puede imprimirse en la consola: 
scrcpy --print-fps

# Es posible grabar la pantalla mientras se refleja: 
scrcpy --record file.mp4
scrcpy -r file.mkv

# Configuracion personal 
scrcpy -b 2M -m 1024 --max-fps 25 

# Fuente settings scrcpy
# https://esgeeks.com/scrcpy-controlar-dispositivo-android/

adb devices
adb tcpip 4444
adb connect 192.168.1.89:4444

# Fuente conexion tcp scrcpy
# https://www.youtube.com/watch?v=wj73mNgoJis

sndcpy
# Fuente de audio desde celular a computador
# https://github.com/rom1v/sndcpy

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
