# script que transforma todos os arquivos jpg em png dentro de uma pasta
#!/bin/bash

cd ~/Dev/personal/alura/shell-scripting-parte-1/imagens-livros

for imagem in *.jpg
do
	convert $imagem $imagem.png
done