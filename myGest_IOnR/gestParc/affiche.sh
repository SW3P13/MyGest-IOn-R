DB_USER=test
DB_USER_MDP=btsinfo
DB_MDP=btsinfo
sudo mysql --user=$DB_USER --password=$DB_MDP 'test' -e "select * from Equipement;";
sudo mysql --user=$DB_USER --password=$DB_MDP 'test' -e "select * from TypeE;";
