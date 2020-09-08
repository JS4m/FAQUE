#!/bin/bash
# Author: @ByDog3r
# https://github.com/ByDog3r/Faque

function banner(){
    echo -e "${rojo}"
    echo -e "▄████  ██   ▄▄ █    ▄   ▄███▄   "
    echo -e "█▀   ▀ █ █ █   █     █  █▀   ▀  "
    echo -e "█▀▀    █▄▄█ ▀▀▀█  █   █ ██▄▄    "
    echo -e "█      █  █    █  █   █ █▄   ▄▀ "
    echo -e " █        █     █ █▄ ▄█ ▀███▀   "
    echo -e "  ▀      █       ▀ ▀▀▀          "
    echo -e "        ▀                       "
    echo -e "     ${verde}    Made for @ByDog3r\n"
}

PWD=$(pwd)
source ${PWD}/variables.sh

trap ctrl_c int
function ctrl_c(){
    clear
    banner
    echo -e "\n${verde}[${blanco}${parpadeo}*${final}${verde}] You are exiting to script. ${final}"
    sleep 3
    clear
    exit 1
}




function main(){
    clear
    banner
    sleep 1
    fakemail
}

function fakemail(){
    clear
    banner
    sleep 1
    echo -e "${verde} Email spoof: ${rojo} >${final} \n"
    read faker
    clear
    banner
    echo -e "${verde} Receptor email: ${rojo} >${final} \n"
    read fakiado
    clear
    banner
    echo -e "${verde} Title of message: ${rojo} >${final} \n"
    read title
    clear
    banner
    echo -e "${verde} Message: ${rojo} >${final} \n"
    read mess
    sleep 1
    clear
    banner
    echo -e "${verde} The mail will send be like: \n ${final}" 
    echo -e "${rojo} > ${blanco} Spoofer: $faker ${final} \n"
    echo -e "${rojo} > ${blanco} Target: $fakiado ${final} \n"
    echo -e "${rojo} > ${blanco} Title: $title ${final} \n"
    echo -e "${rojo} > ${blanco} Message: $mess ${final} \n"
    sleep 1
    echo -e "${verde}Are you sure to send this mail? ${rojo}[y/n]${final}"
		read Seguro
		case $Seguro in
			y)
			curl --data "remitente=$fakiado && asunto=$title && msj=$mess && desde=$faker" https://insessorial-halls.000webhostapp.com/send.php
            clear
            banner
            sleep 1
            echo -e "\n${verde}[${rojo}+${verde}]${final} Sended. ${final}"
			;;	
			n)
				clear
                banner
                exit 1
            ;;
            *) echo "La opcion que ingreso no existe."
            ;;
        esac

}

main
