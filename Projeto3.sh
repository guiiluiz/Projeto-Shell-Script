#!/bin/bash
#Eu sou Trybe e...
ARQUIVO=$1
TEXTO=`cat $ARQUIVO`

if [ -z $ARQUIVO ]
then
    echo "Opa, me fala qual arquivo ai camarada!"
else

    LETRAS=$[ `wc -m $ARQUIVO | cut -d' ' -f1` ]

    TEMPO=$[$LETRAS / 10] # 10 CARACTERES = 1 SEGUNDO
    MINUTOS=$[$TEMPO / 60]  # 1 SEGUNDO / 60 = TEMPO POR MINUTO
    
    if [[ $ARQUIVO = *".txt" ]]
    then
        echo "Tempo estimado: "$MINUTOS" minutos"        
    else        
        echo "Esse arquivo ai ta errado meu chapa!"
    fi
fi
