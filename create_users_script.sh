#!/bin/bash
echo ".........................................................."
echo "Bootcamp - Linux Experience - Digital Innovation One, Inc"
echo "                          by iofico | Idelio Ofico                                "
echo ".........................................................."
echo "."
echo "."
echo "."
echo "."
echo "."
echo "Creating folder structure..."
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico
echo "Creating folder structure...Done"
echo "."
echo "."
echo "Creating groups..."
groupadd GRP_ADM
groupadd GRP_VEM
groupadd GRP_SEC

echo "Creating groups...Done"
echo "."
echo "."
echo "Creating users..."

useradd carlos -c "Dummy user 01" -m -s /bin/bash -p $(openssl passwd -crypt Test@123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Dummy user 02" -m -s /bin/bash -p $(openssl passwd -crypt Test@123) -G GRP_ADM
passwd maria -e

useradd joao -c "Dummy suer 03" -m -s /bin/bash -p $(openssl passwd -crypt Test@123) -G GRP_ADM
passwd maria -e

useradd debora -c "Dummy user 04" -m -s /bin/bash -p $(openssl passwd -crypt Test@123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Dummy user 05" -m -s /bin/bash -p $(openssl passwd -crypt Test@123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Dummy user 06" -m -s /bin/bash -p $(openssl passwd -crypt Test@123) -G GRP_VEN
passwd roberto -e

useadd josefina -c "Dummy user 07" -m -s /bin/bash -p $(openssl passwd -crypt Test@123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Dummy user 08" -m -s /bin/bash -p $(openssl passwd -crypt Test@123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Dummy user 09" -m -s .bin/bash -p $(openassl passwd -crypt Test@123) -G GRP_SEC
passwd rogerio -e

echo "."
echo "."
echo "Managing permissions..."

chown root:GRP_ADM /adm
chown root:GRP_VEM /ven
chown root:GRP_SEC /sec

echo "...changing permissions"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Managing permissions...Done"
echo "Creating users...Done"
echo "."
echo "."
echo "Finished executing script.."