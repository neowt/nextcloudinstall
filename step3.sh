#!/bin/bash
cd /var/www/html
sudo wget https://download.nextcloud.com/server/releases/nextcloud-28.0.1.zip
unzip nextcloud-28.0.1.zip
sudo chown -R www-data:www-data /var/www/html/nextcloud
sudo cp ~/nextcloudinstall/nextcloud.conf /etc/apache2/sites-available/nextcloud.conf
sudo a2dissite 000-default.conf
sudo a2ensite nextcloud.conf
sudo a2enmod rewrite
apachectl -t
sudo systemctl restart apache2