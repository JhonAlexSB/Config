#!/bin/bash

# Ruta de la carpeta que contiene los archivos de entrada
carpeta_entrada="ruta_video_entrada"


# Ruta de la carpeta de salida para los videos recortados
carpeta_salida="ruta_video_salida"

# Recorre todos los archivos .mp4 en la carpeta de entrada
for archivo_entrada in "$carpeta_entrada"/*.mp4; do
    # Extrae el nombre base del archivo sin la extensión .mp4
    nombre_base=$(basename "$archivo_entrada" .mp4)
    
    # Define el nombre del archivo de salida
    archivo_salida="$carpeta_salida/${nombre_base}_cortado.mp4"
    
    # Realiza el recorte utilizando ffmpeg
    
    ffmpeg -ss 00:00:37 -i "$archivo_entrada" -c:v copy -c:a copy "$archivo_salida"

    echo "Video recortado: $archivo_salida"
done
