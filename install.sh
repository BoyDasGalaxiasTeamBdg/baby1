#!bin/bash

CYAN="\033[1;36m"
YELLOW="\033[1;33m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'

echo $YELLOW"[$RED!$YELLOW] Eu vou instalar as ferramentas para o bot funcinar você só tem que concorda com os arquivos oks? [s/n]"
read inp
if [ "$inp" = "s" ]; then
    pkg update
    pkg upgrade
    pkg install ruby
    gem install lolcat
    pkg install nodejs 
    pkg install libwebp 
    pkg install ffmpeg 
    pkg install wget 
    pkg install tesseract 
    pkg install graphicsmagick 
    pkg install imagemagick 
    npm install
    npm install pm2 -g
    echo $GREEN"Pronto agora pode digitar npm start, escanear o código e usar, att: cartel da teambdg :)"
fi
if [ "$inp" = "n" ]; then
    echo $RED"Você que se foda então, fique tentando descobrir as ferramentas sozinho e manualmente!"
    exit
fi

