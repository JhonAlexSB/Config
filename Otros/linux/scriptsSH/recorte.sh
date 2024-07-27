#!/bin/bash
#Para que funcione el script hay que tener los paquetes ffmpeg y bc
#Para ejecutar el script hay que ejecutar el comando cutvideo.sh seguido de la ruta completa del fichero de vídeo 

#Para determinar la duración del vídeo
duracion=$(ffprobe -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$1" 2>/dev/null)

#Variable que almacena la extensión del fichero de vídeo
extension=$(echo "$1" | sed 's/.*\.//')

#Para traspasar la duración del vídeo original a horas minutos y segundos
horas=$(bc <<< "scale=0; $duracion / 3600")
minutos=$(bc <<< "scale=0; $duracion % 3600 / 60")
segundos=$(bc <<< "scale=0; $duracion % 60" | awk 'gsub(/\./,",")||1' | awk '{print int($0)}') 

#Para imprimir la duración del vídeo en horas minutos y segundos
echo -e "\nLa duración del video es:"
printf '%02dh:%02dm:%02ds\n' $horas $minutos $segundos

#Variable para con valor s para hacer que se pueda repetir la ejecución del script. Cuando toma valor no no se repite
repetirscript="s"

while true; do

  case $repetirscript in

    s)
        while true; do

            echo -e "\nIntroduzca la hora minuto y segundo quieres empezar a recortar con el formato 00:14:15?"

            while true; do
                read inicio

                case $inicio in

                    [0-9][0-9]:[0-5][0-9]:[0-5][0-9])
                    IFS=': ' read -r -a array <<< "$inicio"
                    horaseg=`echo "var=${array[0]};var*3600" | bc`
                    minseg=`echo "var=${array[1]};var*60" | bc`
                    seg=`echo "var=${array[2]};var*1" | bc`
                    duracioninicorte=`echo "$horaseg+$minseg+$seg" | bc`

                    if (( $(echo "$duracioninicorte < $duracion" | bc) ))
                    then
                      echo "Empezará a cortarse el vídeo a partir del tiempo $inicio"
                      break
                    else
                      echo -e "El tiempo introducido es incorrecto. Por favor introduzca un valor inferior a la duración del vídeo original. Introduzca de nuevo el tiempo."
                    fi
                    ;;

                    *) echo "El tiempo introducido es incorrecto. Por favor introduzca un valor con el siguiente formato 01:40:30"
                    ;;

                esac

            done

            break

        done

        while true; do

            echo -e "\nHora minuto y segundo en que quieres finalizar el recorte del vídeo?"

            while true; do

                read final

                case $final in

                    [0-9][0-9]:[0-5][0-9]:[0-5][0-9])
                    IFS=': ' read -r -a array <<< "$final"
                    horaseg=`echo "var=${array[0]};var*3600" | bc`
                    minseg=`echo "var=${array[1]};var*60" | bc`
                    seg=`echo "var=${array[2]};var*1" | bc`
                    duracionfincorte=`echo "$horaseg+$minseg+$seg" | bc`

                    if (( $(echo "$duracionfincorte <= $duracion && $duracionfincorte > $duracioninicorte" | bc) ))
                    then
                      echo "Recortarás el vídeo hasta $final"
                      break
                    else
                      echo -e "El tiempo introducido es incorrecto. Tiene que estar entre donde inicias el corte y la duración del vídeo. Introduzca de nuevo el tiempo."
                    fi
                    ;;

                    *) echo "El tiempo introducido es incorrecto. Por favor introduzca un valor con el siguiente formato 02:40:30"
                    ;;

                esac

            done

            break

        done

        echo -e "\nIntroduzca el nombre que quieres que tenga el fichero cortado (sin su extensión)?"
        read nombre

        ffmpeg -i "$1" -map 0 -default_mode infer_no_subs -loglevel warning -ss $inicio -to $final -c copy "$nombre".$extension

        echo -e "\nVídeo cortado. ¿Quieres cortar otro fragmento del mismo vídeo?"
        read repetirscript
    ;;

    n) echo -e "\nLa tarea ha finalizado"
       break
    ;;

    *) echo -e "\nPor favor introduzca la letra s (Sí) o n (No)"
       read repetirscript
    ;;

  esac

done
