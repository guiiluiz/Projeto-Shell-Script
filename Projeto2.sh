#!/bin/bash
read -p "Digite sua mensagem >" MESSAGE
if [ -z $MESSAGE ]
then
    echo "Você precisa digitar uma mensagem"
else
    curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$MESSAGE\"}" https://hooks.slack.com/services/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
    echo ", mensagem enviada!"
fi