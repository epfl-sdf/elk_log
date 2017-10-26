#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf171026.1725


#curl -XDELETE http://sdf-elk-dev:9200/*
/usr/share/logstash/bin/logstash -f /home/ubuntu/elk_log/projets/www_epfl/www_10_grok.conf

