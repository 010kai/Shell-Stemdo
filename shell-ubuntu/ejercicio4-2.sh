#!/bin/bash
read -p "Introduce un nombre de usuario: " usu

ps -u $usu | sort -k 4
