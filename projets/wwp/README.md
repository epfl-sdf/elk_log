# Table des matières

- [Table des matières](#table-des-matières)
- [Présentation](#présentation)
- [Différents contenus](#différents-contenus)
  * [Dossier](#dossier)
    + [data](#data)
  * [Fichier](#fichier)
    + [Préfixe](#préfixe)
    + [Suffixe](#suffixe)

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

## Fichiers

Les différents fichiers respectent les règles de nommage suivantes

### Préfixe

* On commence par indiquer le nom du projet, ici
```
wwp_*
```

* Ensuite le nombre de ligne correspondant à ce fichier, ici toutes
```
*all_*
```

* Si c'est un fichier particulier, par exemple, un fichier permettant de changer de template.
```
*template*
```

### Suffixe

* Le suffixe indique quel type de fichier c'est, si c'est un fichier de config ou un fichier d'éxecution bash
```
*.conf     *.sh
```
