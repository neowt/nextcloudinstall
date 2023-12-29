cd /var/www/html/nextcloud
sudo -u www-data php occ  maintenance:install \
        --database='mysql' --database-name='nextcloud' \
        --database-user='nextclouduser' --database-pass='Thiam'

echo "In file /etc/apache2/ports.conf change"
echo "          Listen 80 "
echo "            to "
echo "            Listen 0.0.0.0:80"


echo "edit /var/www/html/nextcloud/config/config.php"
echo " 'trusted_domains' =>"
echo " 0 => 'localhost',"
echo " 1 => '192.168.1.*',"