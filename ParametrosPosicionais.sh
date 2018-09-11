#!/bin/bash
# Declaração inicial do script (#!)
# Interpretador a ser utilizado (/bin/bash)

# DESCRIÇÃO:
# Exercitando uso de interação por Parametros Posicionais

clear #limpa a tela

# VARIÁVEIS
NOME=$1    # Atribui o valor ($1) a variável (NOME)
SOBRENOME=$2        # Atribui o valor ($2) a variável (SOBRENOME)
# $1 (captura o conteúdo da primeira posição)
# $2 (captura o conteúdo da segunda posição)


# TÍTULO
echo -e "Parametros Posicionais\n"     # Imprime string (Parametros Posicionais) na tela
# -e (permite o uso de caracteres de espciais)
# \n (caracter especial de pulo de linha)

echo -e "\t$NOME $SOBRENOME"       # Imprime o conteudo das variáveis (NOME e SOBRENOME) na tela
echo -e "\t$2 $1\n"     # Imprime o conteúdo da segunda e da primeira posição na tela
# $ (retorna o valor de uma variável ou execução)
# \t (tab)


# AUTORIZAR EXECUÇÃO:
# chmod +x ParametrosPosicionais.sh

# EXECUTAR:
# ./ParametrosPosicionais.sh "Zé" "Qualquer"