#!/bin/bash

echo "Soll mit dem Script fortgefahren werden? (y/n)"
read -n 1 answer

if [ -r ~/.bashrc ]
then
	echo "~/.bashrc existiert und ich darf diese Datei lesen"
fi

echo "Antwort: $answer"

# if [ $answer = "n" ]
# if [ "$answer" != "y" ] && [ "$answer" != "Y" ]
if [ "$answer" != "y" -a "$answer" != "Y" ]
then
	exit
fi

echo "Mit dem Script wird fortgefahren..."
