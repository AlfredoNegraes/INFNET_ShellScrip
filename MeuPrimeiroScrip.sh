#!/bin/bash
# Declaração inicial do script (#!)
# Interpretador a ser utilizado (/bin/bash)

# DESCRIÇÃO:
# Exercitando noções básicas de elaboração de scrips

clear #limpa a tela

# VARIÁVEL
PROFESSOR="Eduardo Silva Ramos"     # Atribuindo valor a variável

# TÍTULO
echo -e "Meu primeiro Script\n"     # Imprimindo string na tela
# -e (permite o uso de caracteres de espciais)
# \n (caracter especial de pulo de linha)

echo -e "\t Feito em "$(date +%F)       # Imprime string concatenada com a data atual
echo -e "\t Com o professor $PROFESSOR\n"     # Imprime string concatenada com a variável
# $ (retorna o valor de uma variável ou execução)
# \t (tab)

# AUTORIZAR EXECUÇÃO
# chmod +x MeuPrimeiroScrip.sh

# EXECUTAR
# ./MeuPrimeiroScrip.sh