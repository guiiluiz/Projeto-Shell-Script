#!/bin/bash
<<<<<<< HEAD
#Vou ter muito sucesso na programação!
=======
#Eu sou Trybe e...
>>>>>>> 2c5dcf7ae359ab8bdefd7e33d9277cf051781374
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
