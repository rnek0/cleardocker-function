#!/bin/bash

echo -e "\n[!] Creando directorio para funciones custom"
mkdir /usr/share/zsh/functions/custom && cd "$_" &>/dev/null
sleep 0.75
echo -e "\n[!] Descargando el archivo de Github"
wget https://raw.githubusercontent.com/From0x00ToHero/cleardocker-function/main/cleardocker &>/dev/null
chmod +x cleardocker &>/dev/null
sleep 0.75
echo -e "\n[!] Añadiendo el directorio al FPATH en ~/.zshrc"
echo 'fpath=( /usr/share/zsh/functions/custom "${fpath[@]}" )' >> ~/.zshrc
sleep 0.75
echo -e "\n[!] Declarando la función en ~/.zshrc"
echo "autoload -Uz cleardocker" >> ~/.zshrc
sleep 0.75
echo -e "\n[+] Completado"
