#!/bin/bash

#usuários de exemplo: Ricardo e Maria (grupo ADM), Denise e José (grupo VEN) e Carla e João (GRUPO SEC)

echo "Criando pastas"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

#grupo ADM
useradd ricardo -m -c "Ricardo da Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -c "Maria da Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

#grupo VEN
useradd denise -m -c "Denise da Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd jose -m -c "José da Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

#grupo SEC
useradd carla -m -c "Carla da Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd joao -m -c "João da Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


echo "Definindo permissões das pastas"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Concluído"

