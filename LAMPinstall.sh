#!bin/bash
set -ex

echo 'Installing Apache Web Server'

apt install apache2 -y

echo 'Apache Web Server is installed'

echo 'Installing MySql'

apt install mysql-server -y

echo 'Mysql installed'

echo 'Installing php and its modules'

apt install php-pear php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php -y

echo 'php and its modules installed'

echo 'Starting the services'

systemctl restart apache2

systemctl restart mysql

echo 'Enabling the services'

systemctl enable apache2

systemctl enable mysql

echo 'Checking status of services'

echo Apache service is $(systemctl show -p ActiveState --value apache2)

echo Mysql service is $(systemctl show -p ActiveState --value mysql) 

echo LAMP setup installed on ubuntu Successfull
