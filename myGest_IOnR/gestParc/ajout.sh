mdpBDD=btsinfo
mdp=btsinfo
login=simon
echo "LORS DE LA SAISIE DU IDT: METTRE 1, 2, 3 !"
echo "Saisir un nom:"
read addn
echo "Saisir une adresse mac:"
read add1
echo "Saisir une adresse Ip:"
read add2
echo "Saisir un cidr:"
read add3
echo "Saisir un idt:"
read add4
echo "#######"
echo "Veuilliez saisir libelle dans la table TypeE:"
echo "Veuilliez sair un libelle:"
read adda
sudo mysql --user=simon --password=$mdpBDD 'test' -e "insert into Equipement (nom, adMAC, adIP, CIDR, idt) values ('"$addn"', '"$add1"', '"$add2"', '"$add3"', '"$add4"');";
sudo mysql --user=simon --password=$mdpBDD 'test' -e "insert into TypeE (libelle) values ('"$adda"');";
#sudo mysql --user=simon --password=$mdpBDD 'test' -e "insert into Equipement (nom, adMAC, adIP, CIDR) values ('"$addn"', '"$add1"', '"$add2"', '"$add3"');";
echo "Vous pouvez consultÃ© votre ajout de table"
