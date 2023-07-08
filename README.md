Inception : 

Ce projet à l’école 42, m’a permis de découvrir docker, docker-compose, le concept de containerisation ainsi que le fonctionnement d’une application wordpress.
J’ai mis en place 3 microservices contaierisés, au sein du même network défini dans le docker-compose.yaml. 

L’application n’est accessible que depuis le port 443, correspondant au port d’écoute HTTPS de mon serveur web nginx. (Pour le test un certificat autosigné est généré par OpenSSL). 
Le serveur est configuré tel que: si la requête contient des éléments php elle seront redirigées vers le gestionnaire de processus php, PHP-FPM situé dans le container wordpress (en écoute sur le port 9000). 
Un système de volume partagé entre les containers wordpress et nginx est mis en place afin que nginx puisse récupérer tous les fichiers wordpress situé dans /var/www/html. 
Ces même fichiers sont stockés dans la machine parent /home/hrazanam/data/wp-data (ou fichier indiqué dans le docker-compose.yaml, selon la machine)
Enfin dans le container wordpress je définis le user de la database qui communiquera avec le server db mariadb. 
J’utilise les variable situé dans un fichier .env, renseigné au niveau du docker-compose pour indiquer le mdp ($MYSQL_DB_PASS). 
Le nom du user (hina) et de la db (hina_db), sont les même que ceux indiqué dans la création de la db et du user côté container Mariadb, soit les lignes suivantes dans l’inline script : 
CREATE DATABASE IF NOT EXISTS hina_db ;
SHOW DATABASES ;
CREATE USER "hina"@"wordpress.srcs_my_network" IDENTIFIED BY "$MYSQL_DB_PASS";
