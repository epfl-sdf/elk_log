#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735,zf170809.1506


#curl -XDELETE http://sdf-elk-dev:9200/*
/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/zdyn_100_csv.conf




