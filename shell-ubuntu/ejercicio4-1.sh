#!/bin/bash

read -p "Introduce una url de alguna pagina: " url

dig +short $url
