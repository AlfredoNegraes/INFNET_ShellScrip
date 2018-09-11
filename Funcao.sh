#!/bin/bash
# Declaração inicial do script (#!)
# Interpretador a ser utilizado (/bin/bash)

# DESCRIÇÃO:
# Exercitando noções básicas sobre função

clear #limpa a tela


# TÍTULO
echo -e "Função de Verificação\n"     # Imprime string (Meu primeiro Script) na tela
# -e (permite o uso de caracteres de espciais)
# \n (caracter especial de pulo de linha)

# DECLARAÇÃO DA FUNÇÃO
preventiva() {
    echo "Memoria Fisica Livre: $(free -m | grep Mem.: | awk '{print $4}')M"        # Imprime na tela a quantidade de memória fisica livre em Megas
    echo "Memoria Virtual Livre: $(free -m | grep Swap: | awk '{print $4}')M"       # Imprime na tela a quantidade de memória virtual livre em Megas
    # free (Exibe a quantidade de memória livre e usada no sistema) -m (Exibe a quantidade de memória em mebibytes)
    # awk (Leitura de padrões e linguagem de processamento de texto) '{print $4}' (Imprime o conteúdo da 4º posição)
    echo "Utilização da(s) $(top -b -n1 | grep "%CPU(s):" )"
    # top (exibir processos do Linux) -b (enviar a saída da parte superior para outros programas ou para um arquivo) -n1 (Especifica o número máximo de iterações ou frames que o top deve produzir antes de terminar)
}

# EXECUÇÃO DA FUNÇÃO
preventiva

# AUTORIZAR EXECUÇÃO:
# chmod +x Funcao.sh

# EXECUTAR:
# ./Funcao.sh
