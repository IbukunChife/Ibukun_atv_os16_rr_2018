#!/bin/bash/bc -l
#echo "Vou buscar os dados do sistema. Posso  continuar ? [sn] "
#read RESPOSTA
#test "$RESPOSTA" = "n"&& exit

echo "##################################################################"
echo "IMPRIMINDO A DATA E HORARIO"
echo "Data e Horário:"
date
echo

echo "##################################################################"
echo "IMPRESSÃO DA MENSAGEM ALEATÓRIAMENTE"
echo
cont=0
while read LINHA;
do
	let cont++
done < bible.txt
valor=$(($RANDOM % $cont+1))
cont=0
while read LINHA;
do
	if [ "$valor" == "$cont" ]
	then
		echo -e $LINHA && break
	fi
	let cont++
done < bible.txt
echo

echo "##################################################################"
echo "IMPRIMINDO"
echo "O espaço livre e ocupado do hard disk em Gigabyte (GB)"
df -h
echo

echo "##################################################################"
echo "IMPRIMINDO"
echo "O espaço livre e ocupado na memória RAM em Gigabyte (GB)"
free -m -t
echo

echo "##################################################################"
echo "IMPRIMINDO"
echo "todos os arquivos contidos na pasta Downloads"
ls Downloads/
echo 

echo "##################################################################"
echo "IMPRIMINDO"
echo "o número de imagens, videos e arquivos de música na pasta home
do usuário" 
ls -l /home/WizIbk/

echo "##################################################################"
echo "ACABOU"
echo "##################################################################"

