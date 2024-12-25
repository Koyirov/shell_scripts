#!/bin/bash

folder=~/Desktop
to=~/backups

if [ ! -d "$to" ]; then
	mkdir "$to"
fi

oldbackups=$(ls ~/backups/ | grep "backup-desktop" | grep -v "$(date +'%Y-%m')")
oldmonths=$(echo "$oldbackups" | cut -d '-' -f 3,4 | sort | uniq)

for oldmonth in $oldmonths; do
	echo "Betrachte Monat: $oldmonth"
	month_files=$(ls $to/backup-desktop-$oldmonth-*.tar.bz2)
	to_delete=$(echo "$month_files" | tail -n +2)
	if [ -n "$to_delete" ]; then
		rm $to_delete
	fi
	echo "$to_delete"
done

# echo "$oldmonths"

filename="backup-desktop-$(date +'%Y-%m-%d')"
echo "Dateiname: $filename"

echo "Generiere Datei: $to/$filename.tar.bz2"

tar -cjf "$to/$filename.tar.bz2" -C "$folder" .
