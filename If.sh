#!/bin/bash
# Declaração inicial do script (#!)
# Interpretador a ser utilizado (/bin/bash)

# DESCRIÇÃO:
# Exercitando o uso de condições

clear  #limpa a tela

# TÍTULO
echo -e "Condicional (If)\n"     # Imprime string (Condicional (If)) na tela

echo -en "\tInforme o Usuário: "; read NOME        # Imprime string (Informe o Usuário: ) sem pular linha e recebe entrada do usuário na tela
echo -e "\tVerificando se o $NOME está logado..."    # Imprime string (Verificando se o       está logado... ) concatenada com o conteúdo da variavel ($NOME) na tela
sleep 3     # Pausa a execução por 2 segundos

who | grep $NOME > /dev/null
# who (mostra quem está logado)

# CONDIÇÃO
if [ $? -eq 0 ]; then
        echo -e "\tO usuário $NOME está logado."
else
        echo -e "\tO usuário $NOME não está logado."
fi

echo


# AUTORIZAR EXECUÇÃO:
# chmod +x If.sh

# EXECUTAR:
# ./If.sh