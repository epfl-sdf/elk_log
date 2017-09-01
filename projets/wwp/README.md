# Table des matières

- [Présentation](#présentation)
- [Différents contenus](#différents-contenus)
  * [Dossiers](#dossiers)
    + [wwp_all_csv](#wwp_all_csv)
    + [wwp_all_grok](#wwp_all_grok)
    + [wwp_test](#wwp_test)
  * [Fichier](#fichier)

# Présentation

<p align="justify">Ce dossier contient les différents fichiers nécessaires au fonctionnement des tests sur les logs de wwp
(erreurs du portage des sites en worpress). Le but est de ce faire la main sur une petite partie des logs afin de pouvoir
tous les traiter par la suite.</p>

# Différents contenus

## Dossiers

### wwp_all_csv

Le dossier wwp_all_csv contient les fichiers liés à la solution avec filtre CSV pour le projet wwp.

### wwp_all_grok

Le dossier wwp_all_grok contient les fichiers liés à la solution avec filtre grok pour le projet wwp.

### wwp_test

Le dossier wwp_test contient les fichiers liés aux premiers tests sur ce projet. On avait commencé à ne travailler que sur
1000 lignes.

## Fichier

Afin de lancer les .conf de manière plus propre il suffit d'exécuter la commande suivante
```
./wwp_all.sh.sh
```

Il suffit de préciser, en argument:
1. Le serveur hôte qui va recevoir les données traitées et pouvoir les afficher sur Kibana
1. L'index du fichier
1. Le fichier .conf à lancer
1. Possibilité de désactiver des commentaires si on veut reseter le template, mais ce n'est plus nécessaire de reseter le template dans la dernière version de Kibana.

Une aide est disponible en entrant, comme seul argument, "-help".

<p align="justify">
Il faut ce baser sur ce script pour pouvoir en faire un correspondant au projet voulu. Cependant, depuis Kibana 5.5 il n'est plus nécessaire de changer de template ou encore d'activer les variables d'environnement avec --allow-env.
</p>
