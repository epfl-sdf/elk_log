#!/bin/bash
#petit script pour monter très facilement les logs qui se trouvent sur les serveurs du KIS en sshfs
#zf171129.1952, zf180328.1455


#serveur pour http://www-test.epfl.ch
#sudo mkdir -p /mnt/log_remote/exopgesrv34/www.epfl.ch
#sudo chown -R ubuntu:ubuntu /mnt/log_remote/exopgesrv34/
#sshfs kis@exopgesrv34:/var/www/vhosts/www.epfl.ch/logs /mnt/log_remote/exopgesrv34/www.epfl.ch

#serveur pour http://www.epfl.ch
#sudo mkdir -p /mnt/log_remote/exopgesrv75/www.epfl.ch
#sudo chown -R ubuntu:ubuntu /mnt/log_remote/exopgesrv75/
#sshfs kis@exopgesrv75:/var/www/vhosts/www.epfl.ch/logs /mnt/log_remote/exopgesrv75/www.epfl.ch
#sudo mkdir -p /mnt/log_remote/exopgesrv76/www.epfl.ch
#sudo chown -R ubuntu:ubuntu /mnt/log_remote/exopgesrv76/
#sshfs kis@exopgesrv76:/var/www/vhosts/www.epfl.ch/logs /mnt/log_remote/exopgesrv76/www.epfl.ch

#serveur pour https://test-www-backend.epfl.ch/
#sudo mkdir -p /mnt/log_remote/exopgesrv95/www.epfl.ch
#sudo chown -R ubuntu:ubuntu /mnt/log_remote/exopgesrv95/
#sshfs kis@exopgesrv95:/var/www/vhosts/www.epfl.ch/logs /mnt/log_remote/exopgesrv95/www.epfl.ch
#sudo mkdir -p /mnt/log_remote/exopgesrv96/www.epfl.ch
#sudo chown -R ubuntu:ubuntu /mnt/log_remote/exopgesrv96/
#sshfs kis@exopgesrv96:/var/www/vhosts/www.epfl.ch/logs /mnt/log_remote/exopgesrv96/www.epfl.ch

#serveur pour https://test-www-proxy.epfl.ch/
#sudo mkdir -p /mnt/log_remote/exopgesrv93/www.epfl.ch
#sudo chown -R ubuntu:ubuntu /mnt/log_remote/exopgesrv93/
#sshfs kis@exopgesrv93:/var/www/vhosts/www.epfl.ch/logs /mnt/log_remote/exopgesrv93/www.epfl.ch
#sudo mkdir -p /mnt/log_remote/exopgesrv94/www.epfl.ch
#sudo chown -R ubuntu:ubuntu /mnt/log_remote/exopgesrv94/
#sshfs kis@exopgesrv94:/var/www/vhosts/www.epfl.ch/logs /mnt/log_remote/exopgesrv94/www.epfl.ch


#serveur pour https://actu.epfl.ch/
sudo mkdir -p /mnt/log_remote/actu1/actu.epfl.ch
sudo chown -R ubuntu:ubuntu /mnt/log_remote/actu1/
sshfs kis@actu1:/var/www/vhosts/actu.epfl.ch/logs /mnt/log_remote/actu1/actu.epfl.ch
sudo mkdir -p /mnt/log_remote/actu2/actu.epfl.ch
sudo chown -R ubuntu:ubuntu /mnt/log_remote/actu2/
sshfs kis@actu2:/var/www/vhosts/actu.epfl.ch/logs /mnt/log_remote/actu2/actu.epfl.ch


#serveur pour http://static.epfl.ch
sudo mkdir -p /mnt/log_remote/kissrv104
sudo chown -R ubuntu:ubuntu /mnt/log_remote/kissrv104
sshfs kis@kissrv104:/var/log/nginx /mnt/log_remote/kissrv104
sudo mkdir -p /mnt/log_remote/kissrv105
sudo chown -R ubuntu:ubuntu /mnt/log_remote/kissrv105
sshfs kis@kissrv105:/var/log/nginx /mnt/log_remote/kissrv105

mount

