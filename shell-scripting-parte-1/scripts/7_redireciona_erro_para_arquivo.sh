# script que redireciona qualquer erro (no caso, nome da pasta nao existe) para um arquivo de erro

converte_imagem(){
cd ~/Dev/personal/alura/shell-scripting-parte-1/BLABLABLA

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
}
converte_imagem 2>erros_conversao.txt # o numero 2 significa saida padrao de erros.. que sera redirecionada para o arquivo erros_conversao.txt
if [ $? -eq 0 ] #se retorno da funcao for 0, sucesso... o $? pega o retorno do ultimo comando executado
then
	echo "Conversão realizada com sucesso"
else
	echo "Houve uma falha no processo"
fi