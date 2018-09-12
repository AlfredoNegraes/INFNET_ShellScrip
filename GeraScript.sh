#!/bin/bash

clear

# VARIÀVEIS
DIRETORIO=$HOME/ShellScrips
INTERPRETADOR="/bin/bash"
AUTOR=$(echo $USERNAME | awk '{print toupper($0)}')                     # Converte a string para letra maiuscula

# FUNÇÕES
# Trata a interação com o Usuário
Interacao() {
    echo -en "$PERGUNTA"; read RESPOSTA
    ENTRADA=$(echo $RESPOSTA | tr -d ' ' | tr [:lower:] [:upper:])      # Remove os espacos e converte a string para letra maiuscula
    echo
}
# Gera Cabecalho  para o Script
Cabecalho () {
    echo -e "#!$INTERPRETADOR" > "$DIRETORIO/$SCRIPT"
    echo >> "$DIRETORIO/$SCRIPT"
    echo -e "#\tAUTOR: $AUTOR" >> "$DIRETORIO/$SCRIPT"
    echo -e "#\tCRIADO EM $(date +%d/%m/%y)" >> "$DIRETORIO/$SCRIPT"
    echo -e "#\tDESCRIÇÃO: [digite aqui]" >> "$DIRETORIO/$SCRIPT"
    echo >> "$DIRETORIO/$SCRIPT"
    echo >> "$DIRETORIO/$SCRIPT"
    echo >> "$DIRETORIO/$SCRIPT"
    }

# TÍTULO
echo -e "Gerador Base de ShellScrip v1.0\n"
echo -e "\t AUTOR: ALFREDO NEGRAES"
echo -e "\t CRIADO EM 12/09/2018"
echo
echo


    # INTERAÇÃO COM O USUÁRIO -  INFORMAR SCRIPT
    PERGUNTA="Digite o nome do Script:  "
    Interacao
    SCRIPT=$ENTRADA

    # TESTE - GARATIR EXISTÊNCIA DO DIRETÓRIO
    test -d "$DIRETORIO"
    if [ $? -eq 1 ]; then
        mkdir $DIRETORIO &> /dev/null
    fi

    #TESTE - GARANTIR NOME NÃO-VAZIO
    test -n "$SCRIPT"
    if [ $? -eq 1 ]; then
        SCRIPT="SEM-NOME"
    fi

    # NOME COMPLETO DO ARQUIVO
    SCRIPT=$SCRIPT$(date +-%F).sh

    # TESTE - VERIFICAR A EXISTÊNCIA DO SCRIPT
    test -f "$DIRETORIO/$SCRIPT"
    if [ $? -eq 1 ]; then
        # SCRIPT AUSENTE
            # CRIAÇÃO DO SCRIPT
            touch $DIRETORIO/$SCRIPT
            Cabecalho
            echo "Script Criado: $SCRIPT"
            # LIBERAÇÃO PARA EXECUÇÃO DO SCRIPT
            chmod +x $DIRETORIO/$SCRIPT
            # ABERTURA PARA EDIÇÃO
            vim -c start +8 $DIRETORIO/$SCRIPT
    else
        # SCRIPT PRESENTE
            # INTERAÇÃO DECISÃO
            echo -e "Existe um Scrip com o nome digitado."
            PERGUNTA="Deseja sobrescrever o arquivo $SCRIPT (s/n):  "
            Interacao
            OPCAO=$ENTRADA
            #  OPÇÕES DE INTERAÇÃO
            case "$OPCAO" in
                S)
                    Cabecalho
                    echo "Script Sobrescrito: $SCRIPT"
                    vim -c start +8 $DIRETORIO/$SCRIPT
                    ;;
                N)
                    echo "Script Preservado: $SCRIPT"
                    vim $DIRETORIO/$SCRIPT
                    ;;
                *)
                    echo "Opção Invalida"
                    echo "Encerrando o Script..."
                    sleep 2
                    exit 1
                    ;;
            esac
    fi
    echo "Diretório Base: $DIRETORIO"
    echo

exit 0