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
echo -e "\n${VERDE}"
# El comando figlet genera el texto grande
figlet "ALCUDIA"
echo -e "${RESET}"

# 3. Dibujar "CYBERSECURITY" en ROJO
echo -e "${ROJO}               C Y B E R S E C U R I T Y${RESET}\n"

# 4. Mostrar información útil (IP, hora, etc.)
echo -e "${AZUL}---------------------------------------------------\n${RESET}"
echo -e "${AZUL_CLARO}Usuario:${RESET} $(whoami)"
echo -e "${AZUL_CLARO}Directorio:${RESET} $(pwd)"
echo -e "${AZUL_CLARO}Hora:${RESET} $(date +%H:%M:%S)"
echo -e "${AZUL}---------------------------------------------------\n${RESET}"

# 5. Restablecer el color (CRÍTICO) para que la línea de comandos normal funcione.
tput sgr0
