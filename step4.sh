cd /var/www/html/nextcloud
sudo -u www-data php occ  maintenance:install \
        --database='mysql' --database-name='nextcloud' \
        --database-user='nextclouduser' --database-pass='Thiam'