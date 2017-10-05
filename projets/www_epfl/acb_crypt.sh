#!/bin/bash
#Cryptage des credentials
#zf171005.1547

gpg2 -c ~/app_crendential_box.elk_log.sh
mv ~/app_crendential_box.elk_log.sh .
rm -R ~/.gnupg
