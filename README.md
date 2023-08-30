# Télécharger les épreuves pratiques de spécialité NSI 2022

Petit script `bash` *one-liner* pour télécharger en un click les épreuves pratiques de spécialité NSI de la session 2022.

Le premier `curl` charge la page. La commande `gawk` récupère à l'aide d'une regex les liens de téléchargements des sujets. Le deuxième `curl` télécharge les sujets. La commande `bsdtar` décompresse et sauvegarde les dossiers sur le disque.

## Utilisation

Rendre le fichier exécutable

```sh
chmod u+x get-ep-nsi-22.sh
```

et exécuter le script avec la commande 

```sh
./get-ep-nsi-22.sh
```
