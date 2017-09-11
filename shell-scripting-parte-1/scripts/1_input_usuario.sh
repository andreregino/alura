# script que transforma jpg em png de acordo com o primeiro input do usuario
#!/bin/bash

CAMINHO_IMAGENS=~/Dev/personal/alura/shell-scripting-parte-1/imagens-livros

convert $CAMINHO_IMAGENS/$1.jpg $CAMINHO_IMAGENS/$1.png