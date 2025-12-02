#!/bin/bash
source $HOME/termux_banner.sh
# Definición de colores ANSI:
VERDE='\e[32m'
ROJO='\e[31m'
AZUL_CLARO='\e[96m'
AZUL='\e[94m'
RESET='\e[0m'

# 1. Limpiar la terminal
clear

# 2. Dibujar el nombre "ALCUDIA" usando figlet en VERDE
# NOTA: printf se usa aquí para introducir la variable de color antes de figlet.
printf "${VERDE}\n"
# El comando figlet genera el texto grande
figlet "ALCUDIA"
printf "${RESET}"

# 3. Dibujar "CYBERSECURITY" en ROJO
# Usamos printf con salto de línea (\n)
printf "${ROJO}               C Y B E R S E C U R I T Y${RESET}\n\n"

# 4. Mostrar información útil (IP, hora, etc.)
# Usamos printf para evitar problemas con la opción -e de echo
printf "${AZUL}---------------------------------------------------\n${RESET}"
printf "${AZUL_CLARO}Usuario:${RESET} $(whoami)\n"
printf "${AZUL_CLARO}Directorio:${RESET} $(pwd)\n"
printf "${AZUL_CLARO}Hora:${RESET} $(date +%H:%M:%S)\n"
printf "${AZUL}---------------------------------------------------\n\n${RESET}"

# 5. Restablecer el color (CRÍTICO) para que la línea de comandos normal funcione.
tput sgr0
