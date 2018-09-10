#!/bin/bash
# Declaração inicial do script (#!)
# Interpretador a ser utilizado (/bin/bash)

# DESCRIÇÃO:
# Exercitando noções básicas de elaboração de scrips

clear #limpa a tela

# VARIÁVEIS
DIRETORIO="/etc/passwd" # Atribui o valor (/etc/passwd) a variável (DIRETORIO)

# TÍTULO
echo -e "Script Interativo\n\n"     # Imprime string (Script Interativo) na tela
# \n (caracter especial de pulo de linha)

echo -e "Digite o nome do Usuário:" # Imprime string (Digite o nome do Usuário:) na tela
read NOME # Captura interação na variável (NOME)
echo # Imprime uma linha sem conteudo na tela

# BUSCA=`grep $NOME $DIRETORIO`
BUSCA=$(grep $NOME $DIRETORIO) #Atribui o conteúdo da execução (grep $NOME $DIRETORIO) a variável (BUSCA)
# $ (retorna o valor de uma variável ou execução)

echo -e "\tPesquisando o nome $NOME em $DIRETORIO"  # Imprimie a string (Pesquisando o nome     em       ) concatenada com o conteudo das Variáveis ($NOME e $DIRETORIO) na tela
sleep 3     # Aguarda 3 segundos
echo -e "\tResultado:"      # Imprime a string (Resultado:) na tela
echo -e "\t  "$BUSCA"\n"    # Imprime o conteudo da variável (BUSCA) na tela
# \t (tab)
# $ (retorna o valor de uma variável ou execução)


# AUTORIZAR EXECUÇÃO:
# chmod +x MeuPrimeiroScrip.sh

# EXECUTAR:
# ./MeuPrimeiroScrip.sh
