#!/bin/bash

age=$1

if [ $age -ge 18 ]
then
	echo "Diese Person darf alles bestellen"
elif [ $age -ge 16 ]; then
	echo "Diese Person darf nur Bier trinken"
else
	echo "Diese Person darf keinen Alkohol trinken"
fi


#if [ -r ~/.bashrc2 ]; then
#	echo "Datei existiert"
#else
#	echo "Datei nicht existiert!"
#fi

