#!/bin/bash
#Cryptage des credentials
#zf170417.1528

gpg2 -c ~/app_crendential_box.elk_log.sh
mv ~/app_crendential_box.elk_log.sh .
rm -R ~/.gnupg
