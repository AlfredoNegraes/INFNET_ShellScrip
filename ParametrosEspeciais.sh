#!/bin/bash
# Declaração inicial do script (#!)
# Interpretador a ser utilizado (/bin/bash)

# DESCRIÇÃO:
# Exercitando uso de interação por Parametros Especiais

clear       #limpa a tela

# VARIÁVEIS
NOME=$1

# TÍTULO
echo -e "Parametros Especiais"

echo -e "\t- Nome do Script: $0"
echo -e "\t- PID do Script: $$"
echo -e "\t- Quantidade de Parâmetros: $#"
echo -e "\t- Lista todos os Parametros: $*"
id $NOME 2> /dev/null
echo -e "\t- Código de Retorno do último comando: $?"
sleep 1h &  # Criar Processo em segundo plano
# sleep ()
# & ()
echo -e "\t- PID da última tarefa em segundo plano: $!"
kill $!     # Mata o ultimo processo em segundo plano
echo

# AUTORIZAR EXECUÇÃO:
# chmod +x ParametrosEspeciais.sh

# EXECUTAR:
# ./ParametrosEspeciais.sh "root"