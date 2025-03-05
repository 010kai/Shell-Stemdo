#!/bin/bash

read -p "Introduce una URL de alguna página: " url  # Pide una URL

dig +short $url  # Muestra la información de la URL usando dig
