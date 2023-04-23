mdpBDD=btsinfo
mdp=btsinfo
login=simon
echo "Veuilliez saisir l'id de la saisie:"
read numa
sudo mysql --user=simon --password=$mdpBDD 'test' -e "delete from Equipement where id='"$numa"';";
sudo mysql --user=simon --password=$mdpBDD 'test' -e "delete from TypeE where id='"$numa"';";
#sudo mysql --user=simon --password=$mdpBDD 'test' -e "delete from TypeE where id='"$numa"';";
