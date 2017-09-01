# Table des matières

- [Présentation](#présentation)
- [Différents contenus](#différents-contenus)
  * [Fichiers](#fichiers)
    + [Préfixe](#préfixe)
    + [Suffixe](#suffixe)

# Présentation

<p align="justify">Ce dossier contient les différents fichiers nécessaires au fonctionnement des tests sur les logs de wwp
(erreurs du portage des sites en worpress) fonctionnant avec le filtre grok.</p>

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
*grok_*
```

* Si c'est un fichier particulier, par exemple, un fichier permettant de changer le mapping, ou encore si c'est un fichier final
```
*mapping*     *final*
```

* Si c'est un fichier particulier de base, on change un peu la nomenclature en expliquant ce que c'est, ici on a un fichier pour les patterns personnalisés
```
*pattern*
```

### Suffixe

* Le suffixe indique quel type de fichier c'est, si c'est un fichier de config ou un script json
```
*.conf     *.jsonn
```
