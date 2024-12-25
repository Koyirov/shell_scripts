#!/bin/bash

hello_world () {
	read result
	echo "Hallo Welt $result!"
	return 0
}

echo "TEST" | hello_world
hw_success=$?
if [ $hw_success -eq 0 ]; then
	echo "Letzter Befehl wurde korrekt ausgeführt"
fi
