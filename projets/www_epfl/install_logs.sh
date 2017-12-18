#!/bin/bash
#petit script pour installer très facilement les logs qui se trouve sur le NAS de la SDF
#zf171006.1512, zf171218.1647

# si jamais pour mémoire: sshfs -o defer_permissions sdf@128.178.116.159:/ ./nassdf1/


zPATHprojet=~/logs_www_epfl
zPATHnas=/volume1/sdf/logs_www_epfl/170919

sudo apt-get update
sudo apt-get -y install sshpass tree
sudo apt-get -y install -y gnupg2

./acb_uncrypt.sh
. ~/app_crendential_box.elk_log.sh
echo $zPASSWORD

rm -R $zPATHprojet
mkdir $zPATHprojet


zPATH=static1_logs/var/log/nginx
zFILE=access.log-20170920
echo -e --------------- copie $zPATH/$zFILE depuis le nassdf1, cela prend environ 1 minute !
mkdir -p $zPATHprojet/$zPATH
sshpass -p $zPASSWORD scp sdf@128.178.116.159:/$zPATHnas/$zPATH/$zFILE $zPATHprojet/$zPATH/.
echo -
echo -e --------------- nombre de lignes de $zPATHprojet/$zPATH/$zFILE
wc $zPATHprojet/$zPATH/$zFILE
echo -e --------------- première ligne de $zPATHprojet/$zPATH/$zFILE
head -n 1 $zPATHprojet/$zPATH/$zFILE
echo -e --------------- dernière ligne de $zPATHprojet/$zPATH/$zFILE
tail -n 1 $zPATHprojet/$zPATH/$zFILE
echo -
head -n 10 $zPATHprojet/$zPATH/$zFILE > $zPATHprojet/$zPATH/$zFILE.10l


zPATH=static2_logs/var/log/nginx
zFILE=access.log-20170920
echo -e --------------- copie $zPATH/$zFILE depuis le nassdf1, cela prend environ 1 minute !
mkdir -p $zPATHprojet/$zPATH
sshpass -p $zPASSWORD scp sdf@128.178.116.159:/$zPATHnas/$zPATH/$zFILE $zPATHprojet/$zPATH/.
echo -
echo -e --------------- nombre de lignes de $zPATHprojet/$zPATH/$zFILE
wc $zPATHprojet/$zPATH/$zFILE
echo -e --------------- première ligne de $zPATHprojet/$zPATH/$zFILE
head -n 1 $zPATHprojet/$zPATH/$zFILE
echo -e --------------- dernière ligne de $zPATHprojet/$zPATH/$zFILE
tail -n 1 $zPATHprojet/$zPATH/$zFILE
echo -
head -n 10 $zPATHprojet/$zPATH/$zFILE > $zPATHprojet/$zPATH/$zFILE.10l


zPATH=www_logs/www_logs
zFILE=www.epfl.ch-ssl_access_ssl.log
echo -e --------------- copie $zPATH/$zFILE depuis le nassdf1, cela prend environ 1 minute !
mkdir -p $zPATHprojet/$zPATH
sshpass -p $zPASSWORD scp sdf@128.178.116.159:/$zPATHnas/$zPATH/$zFILE $zPATHprojet/$zPATH/.
echo -
echo -e --------------- nombre de lignes de $zPATHprojet/$zPATH/$zFILE
wc $zPATHprojet/$zPATH/$zFILE
echo -e --------------- première ligne de $zPATHprojet/$zPATH/$zFILE
head -n 1 $zPATHprojet/$zPATH/$zFILE
echo -e --------------- dernière ligne de $zPATHprojet/$zPATH/$zFILE
tail -n 1 $zPATHprojet/$zPATH/$zFILE
echo -
head -n 10 $zPATHprojet/$zPATH/$zFILE > $zPATHprojet/$zPATH/$zFILE.10l

tree $zPATHprojet






: <<'zdebug'
zPATH2=$zPATH/www_logs/www_logs
zFILE=$zPATH2/www.epfl.ch-ssl_access_ssl.log
echo -e --------------- head $zFILE
head -n 1 $zFILE
echo -e --------------- tail $zFILE
tail -n 1 $zFILE
zdebug



