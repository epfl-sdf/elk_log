#!/bin/sh
#petit script pour décompresser très facilement les logs qui se trouve sur le NAS de la SDF
#zf171006.1029

zPATH=.

: <<'zdebug'
rm -R $zPATH/static1_logs $zPATH/static2_logs $zPATH/www_logs
echo --------------- uncompress les logs, cela prend environ 1 minute !
unzip $zPATH/static1_logs.zip -d $zPATH/static1_logs
unzip $zPATH/static2_logs.zip -d $zPATH/static2_logs
unzip $zPATH/www_logs.zip -d $zPATH/www_logs
zdebug

zPATH2=$zPATH/static1_logs/var/log/nginx
zFILE=$zPATH2/access.log-20170920
: <<'zdebug'
echo -e --------------- uncompress les logs $zFILE
gunzip -c $zFILE.gz > $zFILE
zdebug
echo -e --------------- head $zFILE
head -n 1 $zFILE
echo -e --------------- tail $zFILE
tail -n 1 $zFILE

zPATH2=$zPATH/static2_logs/var/log/nginx
zFILE=$zPATH2/access.log-20170920
: <<'zdebug'
echo -e --------------- uncompress les logs $zFILE
gunzip -c $zFILE.gz > $zFILE
zdebug
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




