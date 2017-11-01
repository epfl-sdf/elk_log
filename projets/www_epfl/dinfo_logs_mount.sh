#!/bin/bash
#petit script pour monter très facilement les logs qui se trouvent sur dinfo en sshfs
#zf171101.1138


sshfs dinfo@dinfo1.epfl.ch:/var/www/vhosts/people.epfl.ch/logs /mnt/log_remote/dinfo1/people
sshfs dinfo@dinfo2.epfl.ch:/var/www/vhosts/people.epfl.ch/logs /mnt/log_remote/dinfo2/people

sshfs dinfo@dinfo1.epfl.ch:/var/www/vhosts/accred.epfl.ch/logs /mnt/log_remote/dinfo1/accred
sshfs dinfo@dinfo2.epfl.ch:/var/www/vhosts/accred.epfl.ch/logs /mnt/log_remote/dinfo2/accred

sshfs dinfo@dinfo1.epfl.ch:/var/www/vhosts/absences.epfl.ch/logs /mnt/log_remote/dinfo1/absences
sshfs dinfo@dinfo2.epfl.ch:/var/www/vhosts/absences.epfl.ch/logs /mnt/log_remote/dinfo2/absences


