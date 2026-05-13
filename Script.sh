groupadd grp_sec
echo ""

echo "Criando Usuarios..."
echo ""
useradd Carlos -m -s /bin/bash -p $(openssl passwd -6 Senha) -G grp_adm
useradd Maria -m -s /bin/bash -p $(openssl passwd -6 Senha) -G grp_adm
useradd Joao -m -s /bin/bash -p $(openssl passwd -6 Senha) -G grp_adm
useradd Debora -m -s /bin/bash -p $(openssl passwd -6 Senha) -G grp_ven
useradd Sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha) -G grp_ven
useradd Roberto -m -s /bin/bash -p $(openssl passwd -6 Senha) -G grp_ven
useradd Josefina -m -s /bin/bash -p $(openssl passwd -6 Senha) -G grp_sec
useradd Amanda -m -s /bin/bash -p $(openssl passwd -6 Senha) -G grp_sec
useradd Rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha) -G grp_sec
echo ""

echo "Configurando permissões das pastas..."
echo ""

chown root:grp_adm adm
chown root:grp_ven ven
chown root:grp_sec sec

chmod 770 adm
chmod 770 ven
chmod 770 sec

chmod 777 publico
