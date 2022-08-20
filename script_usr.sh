#!/bin/bash

echo "Aguarde ..."

# mkdir /publico        \\Diretorios criados manualmente 
# mkdir /adm
# mkdir /ven
# mkdir /ser

# groupadd GRP_ADM
# groupadd GRP_VEN              \\Grupos criados manualmente
# groupadd GRP_SEC


echo "Criando os usuários ADM..."
sleep 2
useradd carlos -c "Carlos Eduardo" -s /bin/bash -m -p $(openssl passwd 123@mudar) -G GRP_ADM
useradd maria -c "Maria Clara" -s /bin/bash -m -p $(openssl passwd 123@mudar) -G GRP_ADM
useradd joao -c "Joao alfh" -s /bin/bash -m -p $(openssl passwd 123@mudar) -G GRP_ADM

echo "Criando usuários de Vendas...."
sleep 2
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd 123@mudar) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd 123@mudar) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd 123@mudar) -G GRP_VEN

echo "Criando usuários da Secretaria"
sleep 2
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd 123@mudar) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd 123@mudar) -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd 123@mudar)  -G GRP_SEC


#permissoes dos diretorio


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "terminando..."
sleep 2
