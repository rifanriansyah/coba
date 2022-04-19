#!/bin/bash
yum update -y
yum install -y httpd
yum install yum-utils –y
yum install epel-release –y
yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum-config-manager ––enable remi–php74
yum install php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysql –y
curl -sS https://getcomposer.org/installer | sudo php
mv composer.phar /usr/local/bin/composer
ln -s /usr/local/bin/composer /usr/bin/composer
