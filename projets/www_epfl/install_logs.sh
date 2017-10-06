#!/bin/bash
#petit script pour installer très facilement les logs qui se trouve sur le NAS de la SDF
#zf171006.1034

#sudo apt-get update
#sudo apt-get -y install sshpass
#sudo apt-get -y install -y gnupg2

#./acb_uncrypt.sh

. ~/app_crendential_box.elk_log.sh
#echo $zPASSWORD

zPATH=~/logs_www_epfl



#mkdir $zPATH
echo --------------- copie les logs depuis le nassdf1, cela prend environ 1 minute !


y'a encore un gros problème ici entre le path de la vm et celui du NAS zf171006.1043
exit



zPATH2=$zPATH/static1_logs/var/log/nginx
zFILE=$zPATH2/access.log-20170920

sshpass -p $zPASSWORD scp sdf@128.178.116.159:/volume1/sdf/logs_www_epfl/170919/$zFILE $zPATH/.


echo -e --------------- head $zFILE
head -n 1 $zFILE
echo -e --------------- tail $zFILE
tail -n 1 $zFILE



: 'zdebug'

zPATH2=$zPATH/static2_logs/var/log/nginx
zFILE=$zPATH2/access.log-20170920
echo -e --------------- head $zFILE
head -n 1 $zFILE
echo -e --------------- tail $zFILE
tail -n 1 $zFILE

zPATH2=$zPATH/www_logs/www_logs
zFILE=$zPATH2/www.epfl.ch-ssl_access_ssl.log
echo -e --------------- head $zFILE
head -n 1 $zFILE
echo -e --------------- tail $zFILE
tail -n 1 $zFILE
zdebug



