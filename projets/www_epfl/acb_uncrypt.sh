#!/bin/bash
#Décryptage des credentials
#zf171005.1538

gpg2 app_crendential_box.elk_log.sh.gpg
mv app_crendential_box.elk_log.sh ~/.
rm -R ~/.gnupg
