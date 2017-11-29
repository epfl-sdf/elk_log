#!/bin/bash
#petit script pour monter très facilement les logs qui se trouvent sur les serveurs du KIS en sshfs
#zf171129.1952


#serveur pour http://www-test.epfl.ch
sudo mkdir -p /mnt/log_remote/exopgesrv34/www.epfl.ch
sudo chown -R ubuntu:ubuntu /mnt/log_remote/exopgesrv34/
sshfs kis@exopgesrv34:/var/www/vhosts/www.epfl.ch/logs /mnt/log_remote/exopgesrv34/www.epfl.ch

#serveur pour http://www.epfl.ch
sudo mkdir -p /mnt/log_remote/exopgesrv75/www.epfl.ch
sudo chown -R ubuntu:ubuntu /mnt/log_remote/exopgesrv75/
sshfs kis@exopgesrv75:/var/www/vhosts/www.epfl.ch/logs /mnt/log_remote/exopgesrv75/www.epfl.ch
sudo mkdir -p /mnt/log_remote/exopgesrv76/www.epfl.ch
sudo chown -R ubuntu:ubuntu /mnt/log_remote/exopgesrv76/
sshfs kis@exopgesrv76:/var/www/vhosts/www.epfl.ch/logs /mnt/log_remote/exopgesrv76/www.epfl.ch

#serveur pour http://static.epfl.ch
sudo mkdir -p /mnt/log_remote/kissrv104
sudo chown -R ubuntu:ubuntu /mnt/log_remote/kissrv104
sshfs kis@kissrv104:/var/log/nginx /mnt/log_remote/kissrv104
sudo mkdir -p /mnt/log_remote/kissrv105
sudo chown -R ubuntu:ubuntu /mnt/log_remote/kissrv105
sshfs kis@kissrv105:/var/log/nginx /mnt/log_remote/kissrv105

mount

