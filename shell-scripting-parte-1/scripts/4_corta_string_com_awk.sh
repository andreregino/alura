# script que corta a string imagem.jpg.png transformando-a em imagem.png
#!/bin/bash

cd ~/Dev/personal/alura/shell-scripting-parte-1/imagens-livros

for imagem in *.jpg
do
	# ls $imagem retorna imagem.jpg.png... awk -F. corta a string em 2, separada pelo . 
	# é necessário o $ englobando tudo pois do contrário o comando seria interpretado como uma string comum
	imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')  
	convert $imagem_sem_extensao.jpg $imagem_sem_extensao.png
done