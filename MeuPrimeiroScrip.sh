#!/bin/bash
# Declaração inicial do script (#!)
# Interpretador a ser utilizado (/bin/bash)

# DESCRIÇÃO:
# Exercitando noções básicas de elaboração de scrips

clear #limpa a tela

# VARIÁVEIS
PROFESSOR="Eduardo Silva Ramos"     # Atribui o valor (Eduardo Silva Ramo) a variável (PROFESSOR)

# TÍTULO
echo -e "Meu primeiro Script\n"     # Imprime string (Meu primeiro Script) na tela
# -e (permite o uso de caracteres de espciais)
# \n (caracter especial de pulo de linha)

echo -e "\t Feito em "$(date +%F)       # Imprime string (Feito em) concatenada com a data atual (date +%F)
echo -e "\t Com o professor $PROFESSOR\n"     # Imprime string (Com o professor ) concatenada com a variável (PROFESSOR)
# $ (retorna o valor de uma variável ou execução)
# \t (tab)


# AUTORIZAR EXECUÇÃO:
# chmod +x MeuPrimeiroScrip.sh

# EXECUTAR:
# ./MeuPrimeiroScrip.sh
