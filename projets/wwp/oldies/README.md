# Table des matières

- [Présentation](#présentation)
  * [Contenu du dossier oldies](#contenu-du-dossier-oldies)
  * [Fichiers](#fichiers)
    
# Présentation

## Contenu du dossier oldies

Ce dossier contient les différents fichiers utilisés au début du traitement du projet.

## Fichiers

* wwp_all_csv.sh
Scrip de lancement des fichiers wwp_all_csv.conf mais qui n'est plus utile depuis la dernière version du script de lancement.
On a créé un script générique avec des variables d'environnements.

* wwp_all_grok_sed.*
Couple de fichiers pour modifier directement, dans le fichier .conf, au lancement du script .sh. C'est une mauvaise approche,
on passe désormais par les variables d'environnements.

* wwp_reset_template.sh
Ce script permettait de reseter le template si besoin. Depuis Kibana 5.5 on a plus besoin d'effectuer cette manipulation.
