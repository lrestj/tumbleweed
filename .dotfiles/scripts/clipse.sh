#!bin/bash

echo "Instalovat Clipse ??? (STOP = ctrl-C)"
sleep 6
echo "Instalace povolena..."
sleep 2
mkdir /home/libor/.local/src &&
cd /home/libor/.local/src
git clone https://github.com/savedra1/clipse
cd clipse
go mod tidy
go build -o clipse &&
echo "Přesun instalace...."
sleep 5
ln -s /home/libor/.local/src/clipse/clipse /home/libor/.local/bin/
echo "Clipse je nyní k dispozici"
