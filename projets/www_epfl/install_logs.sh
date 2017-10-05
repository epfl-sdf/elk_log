#!/bin/bash
#petit script pour installer très facilement les logs qui se trouve sur le NAS de la SDF
#zf171005.1915

#sudo apt-get update
#sudo apt-get -y install sshpass
#sudo apt-get -y install -y gnupg2

#./acb_uncrypt.sh

. ~/app_crendential_box.elk_log.sh
#echo $zPASSWORD

zPATH=~/logs_www_epfl
#mkdir $zPATH
#echo --------------- copie les logs depuis le nassdf1, cela prend environ 1 minute !
#sshpass -p $zPASSWORD scp sdf@128.178.116.159:/volume1/sdf/logs_www_epfl/170919/* $zPATH/.

#sudo rm -R $zPATH/static1_logs $zPATH/static2_logs $zPATH/www_logs
#echo --------------- uncompress les logs, cela prend environ 1 minute !
#unzip $zPATH/static1_logs.zip -d $zPATH/static1_logs
#unzip $zPATH/static2_logs.zip -d $zPATH/static2_logs
#unzip $zPATH/www_logs.zip -d $zPATH/www_logs

zPATH2=$zPATH/static1_logs/var/log/nginx
zFILE=$zPATH2/access.log-20170920
echo -e --------------- uncompress les logs $zFILE
gunzip $zFILE.gz

echo -e --------------- head $zFILE
head -n 1 $zFILE
echo -e --------------- tail $zFILE
tail -n 1 $zFILE




