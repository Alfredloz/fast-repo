#!/bin/sh
echo "Primo push della repo $1"
#! ?SOSTITUIRE USERNAME CON NOME GITHUB E PATH CARTELLE
cd ../Documents/Boolean/$1
git add .
git commit -m "creazione file del progetto $1"
git remote add origin https://github.com/Username/$1.git
git branch -M main
git push -u origin main
