#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf171006.1526


#curl -XDELETE http://sdf-elk-dev:9200/*
/opt/logstash/bin/logstash -f /home/ubuntu/elk_log/projets/www_epfl/www_10_csv.conf

