#!/bin/bash

echo "=============Criação de Pastas============="

read -p "Selecione a quantidade de pastas: " qtd_pasta

for ((i=1; i<=qtd_pasta; i++))
do
        echo ""
        echo "Pasta $i"
        read -p "Digite o nome da pasta: " nome_pasta
        mkdir $nome_pasta
        echo "$nome_pasta" >> pastas_criadas.txt
        echo "Pasta criada com sucesso"
done

echo ""
echo "Finalizado"

echo "=============Criação de Grupos============="

groupadd grp_adm
groupadd grp_ven
groupadd grp_sec

echo "Grupos criados com sucesso"

echo "=============Criação de Usuários============="

read -p "Quantos usuários serão criados: " qtd_user

for ((i=1; i<=qtd_user; i++))
do
        echo ""
        echo "Usuário $i"
        read -p "Escreva o nome do usuário: " usuario
        useradd $usuario -m -s /bin/bash -p $(openssl passwd -6 Senha123)
        echo "$usuario" >> usuarios_criados.txt
        echo "Usuário $usuario criado com sucesso!"
done

echo ""
echo "Finalizado"