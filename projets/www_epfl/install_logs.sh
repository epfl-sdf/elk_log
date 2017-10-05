#!/bin/bash
#petit script pour installer très facilement les logs qui se trouve sur le NAS de la SDF
#zf171005.1537

sudo apt-get update
sudo apt-get -y install sshpass
sudo apt-get -y install -y gnupg2

./acb_uncrypt.sh

sshpass -p "xxx" scp sdf@128.178.116.159:/volume1/sdf/tutu .
