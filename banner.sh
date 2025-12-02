#!/bin/bash
source $HOME/termux_banner.sh
# Definición de colores ANSI:
# Definición de colores usando tput (Máxima compatibilidad)
# =========================================================
# tput setaf 2  = Verde (Foreground)
# tput setaf 1  = Rojo
# tput setaf 6  = Cyan (Azul claro)
# tput setaf 4  = Azul
# tput sgr0     = Reset (restablecer todos los atributos)

VERDE=$(tput setaf 2)
ROJO=$(tput setaf 1)
AZUL_CLARO=$(tput setaf 6)
AZUL=$(tput setaf 4)
RESET=$(tput sgr0)

# 1. Limpiar la terminal
clear

# 2. Dibujar el nombre "ALCUDIA" usando figlet en VERDE
printf "\n${VERDE}"
figlet "ALCUDIA"
printf "${RESET}"

# 3. Dibujar "CYBERSECURITY" en ROJO
printf "${ROJO}               C Y B E R S E C U R I T Y${RESET}\n\n"

# 4. Mostrar información útil
printf "${AZUL}---------------------------------------------------\n${RESET}"
printf "${AZUL_CLARO}Usuario:${RESET} $(whoami)\n"
printf "${AZUL_CLARO}Directorio:${RESET} $(pwd)\n"
printf "${AZUL_CLARO}Hora:${RESET} $(date +%H:%M:%S)\n"
printf "${AZUL}---------------------------------------------------\n\n${RESET}"

# 5. Restablecer el color final
tput sgr0
