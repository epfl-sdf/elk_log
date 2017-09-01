# Table des matières

- [Présentation](#présentation)
- [Différents contenus](#différents-contenus)
  * [Fichiers](#fichiers)
    + [Préfixe](#préfixe)
    + [Suffixe](#suffixe)

# Présentation

<p align="justify">Ce dossier contient les différents fichiers nécessaires au fonctionnement des tests sur les logs de wwp
(erreurs du portage des sites en worpress) fonctionnant avec le filtre csv.</p>

# Différents contenus

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

* Le type de filtre utilisé
```
*csv_*
```

* Si c'est un fichier particulier, par exemple, un fichier permettant de changer le mapping, ou encore un numéro de version
```
*mapping*     *2*
```

### Suffixe

* Le suffixe indique quel type de fichier c'est, si c'est un fichier de config, un fichier d'éxecution bash ou encore un script json
```
*.conf     *.sh     *.jsonn
```
