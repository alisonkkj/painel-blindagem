#!/bin/bash

# Cores
verde="\e[1;32m"
vermelho="\e[1;31m"
azul="\e[1;34m"
amarelo="\e[1;33m"
cinza="\e[0;37m"
branco="\e[1;37m"
reset="\e[0m"

# Cabeçalho colorido
clear
echo -e "${azul}  ____  _     ___ ____ ___ ___  _   _ ${reset}"
echo -e "${amarelo} | __ )| |   |_ _/ ___|_ _/ _ \\| \\ | |${reset}"
echo -e "${azul} |  _ \\| |    | | |    | | | | |  \\| |${reset}"
echo -e "${amarelo} | |_) | |___ | | |___ | | |_| | |\\  |${reset}"
echo -e "${azul} |____/|_____|___\\____|___\\___/|_| \\_|${reset}"
echo
echo -e "${amarelo}PAINEL DE BLINDAGEM DE GRUPOS${reset}"
echo -e "${vermelho}              by alisonkkjj yt${reset}"
echo

# Entrada do link
read -p "Cole o link do grupo aqui: " link_grupo

# Função de barra de progresso estilo hacker
barra_progresso() {
    local tempo=$1
    local i=0
    local frases=(
        "Verificando permissões do grupo..."
        "Escaneando membros..."
        "Bloqueando links suspeitos..."
        "Aplicando criptografia..."
        "Monitorando atividades..."
        "Detectando vulnerabilidades..."
        "Atualizando firewall..."
        "Conexão segura estabelecida..."
        "Finalizando blindagem..."
    )
    while [ $i -lt $tempo ]; do
        echo -ne "\r${verde}${frases[$((i % ${#frases[@]}))]}${reset} "
        sleep 1
        ((i++))
    done
    echo -e "\n"
}

# Função de simulação de mensagens estilo hacker
mensagens_hacker=(
    "Verificando erros principais..."
    "Interceptando pacotes..."
    "Bypass ativo..."
    "Monitoramento em tempo real..."
    "Atualizando scripts..."
    "Conexão criptografada..."
    "Acesso autorizado..."
    "Firewall reforçado..."
    "Configuração finalizada..."
    "Grupo blindado com sucesso!"
)

mostrar_mensagem() {
    for msg in "${mensagens_hacker[@]}"; do
        echo -e "${cinza}[$(date +%H:%M:%S)]${reset} ${verde}$msg${reset}"
        sleep 1
    done
}

# Iniciando a simulação
echo -e "\n${verde}[+] Iniciando blindagem do grupo: ${branco}${link_grupo}${reset}\n"
barra_progresso 10
mostrar_mensagem
echo -e "\n${amarelo}[+] Processo de blindagem concluído com sucesso!${reset}\n"
