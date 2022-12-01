#!/bin/bash
yum update -y
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd mariadb-server
systemctl start httpd
systemctl enable httpd
mkdir /var/www/html/
cd /var/www/html/
wget https://github.com/Nosaj123/url-shortner/archive/refs/heads/main.zip
unzip main.zip
mv /var/www/html/url-shortner-main/index.php /var/www/html/
mv /var/www/html/url-shortner-main/config.php /var/www/html/
mv /var/www/html/url-shortner-main/style.css /var/www/html/
	EOF
