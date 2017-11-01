#!/bin/bash
#petit script pour monter très facilement les logs qui se trouvent sur les serveurs du KIS en sshfs
#zf171101.1141


sshfs kis@exopgesrv34:/var/www/vhosts/www.epfl.ch/logs /mnt/log_remote/exopgesrv34/www.epfl.ch
