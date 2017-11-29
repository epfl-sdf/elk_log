#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf171129.1652


THEIP=$(/sbin/ifconfig ens18 | /bin/grep "inet ad" | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')
echo -e " 
Afin de pouvoir garder logstash en marche tout en pouvant quitter la console, il serait bien de le faire tourner dans un 'screen' avec:
screen -S logstash    pour entrer dans screen
./start.sh            pour lancer le serveur WEB dans screen
CTRL+a,d              pour sortir de screen en laissant tourner le serveur
screen -r logstash    pour revenir dans screen
screen -x logstash    pour revenir à plusieurs dans screen
CTRL+d                pour terminer screen
screen -list          pour lister tous les screens en fonctionement

On peur voir les résultat sur Kibana avec:
http://$THEIP:5601
"
read -p "appuyer une touche pour démarrer Logstash"


#attention ceci efface toute la DB Elasticsearch
#curl -XDELETE http://zf-2:9200/*

zIndex="zuzu_logs171129_realtm_www_all_20171129.1653"
#curl -XDELETE http://zf-2:9200/$zIndex

/usr/share/logstash/bin/logstash -f /home/ubuntu/elk_log/projets/www_epfl/www_all_realtm_grok.conf --path.data /home/ubuntu/elk_log/projets/www_epfl/logstash_data_$zIndex

