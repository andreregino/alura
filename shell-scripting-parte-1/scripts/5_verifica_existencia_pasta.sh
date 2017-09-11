# script que verifica a existencia de uma pasta e salva os arquivos png gerados pelo convert

cd ~/Dev/personal/alura/shell-scripting-parte-1/imagens-livros

# se não existir a pasta png, cria (-d de diretorio)
if [ ! -d png ]
then
	mkdir png
fi

for imagem in *.jpg
do
	# ls $imagem retorna imagem.jpg.png... awk -F. corta a string em 2, separada pelo . 
	# é necessário o $ englobando tudo pois do contrário o comando seria interpretado como uma string comum
	imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')  
	convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done