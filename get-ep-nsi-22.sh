#!/bin/bash
#
# Télécharge les épreuves pratiques de spécialité NSI 2022
# 
# script by patrice houlet - 2022 - GPLv3
#

curl -s "https://eduscol.education.fr/2661/banque-des-epreuves-pratiques-de-specialite-nsi" |
gawk 'match($0, /href="\/(document\/[0-9]{5}\/download)"/, m){print m[1]}' |
while read a; do
    curl -s "https://eduscol.education.fr/$a" | bsdtar -xf-
done
