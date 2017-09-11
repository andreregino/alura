# script que transforma jpg em png de acordo com o input do usuário (independente de quantos parametros o usuario passar)
#!/bin/bash

CAMINHO_IMAGENS=~/Dev/personal/alura/shell-scripting-parte-1/imagens-livros

for imagem in $@
do
	convert $CAMINHO_IMAGENS/$imagem.jpg $CAMINHO_IMAGENS/$imagem.png
done