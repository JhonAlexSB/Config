#!/bin/bash

# Ruta de la carpeta que contiene los archivos de entrada
carpeta_entrada="/home/jhon/hospitalvideos"
#/home/jhon/Vídeos/hospitalvideos


# Ruta de la carpeta de salida para los videos recortados
carpeta_salida="/home/jhon/hospitalvideos"

# Recorre todos los archivos .mp4 en la carpeta de entrada
for archivo_entrada in "$carpeta_entrada"/*.mp4; do
    # Extrae el nombre base del archivo sin la extensión .mp4
    nombre_base=$(basename "$archivo_entrada" .mp4)

    # Define el nombre del archivo de salida
    archivo_salida="$carpeta_salida/${nombre_base}_cortado.mp4"

    # Realiza el recorte utilizando ffmpeg

    #ffmpeg -i "$archivo_entrada" -r 25 -c:v libx264 -crf 43 -preset slow -c:a aac -b:a 44k "$archivo_salida"
    ffmpeg -i "$archivo_entrada" -r 25 -b:v 1000k -c:v libx264 -crf 25 -preset slow -c:a aac -b:a 44k "$archivo_salida"
    #ffmpeg -i "$archivo_entrada" -r 25 -vf "scale=1280:720" -c:v libx264 -crf 33 -preset medium -c:a aac -b:a 44k "$archivo_salida"


    echo "Video recortado: $archivo_salida"
done
