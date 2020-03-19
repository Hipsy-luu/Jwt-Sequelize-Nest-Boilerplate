Para correr el repo con cambios en caliente:

    >> npm run start:dev

Comando para resetar el servidor apache para node dentro de un ssh del servidor hosting
    >> pkill -9 Passenger

https://www.npmjs.com/package/sequelize-automate
Crea las entidades de las tablas contenidas en una base de datos automaticamente para usarse en sequelize

    >> sequelize-automate -t [type] -h <host> -d <database> -u <user> -p [password] -P [port]  -e [dialect] -o [/path/to/models] -c [/path/to/config]

    >> sequelize-automate -t ts -h localhost -d enbibo_sisdb -u enbibo_sokoenbi -p enbibosys2015** -P 3306  -e mysql -o ./modelos-automaticos -c ./modelos-automaticos/config

Añadir al phpmyadmin de produccion

ALTER TABLE `user` ADD `npassword` VARCHAR(200) NULL DEFAULT NULL AFTER `password`;
ALTER TABLE `user` ADD `npassword_facebook` VARCHAR(200) NULL DEFAULT NULL AFTER `password_facebook`;
ALTER TABLE `user` ADD `npassword_google` VARCHAR(200) NULL DEFAULT NULL AFTER `password_google`;

ALTER TABLE `user` CHANGE `valid_until` `valid_until` DATE NULL DEFAULT '0000-00-00';

TODO:

    1. - Hay que cambiar el key del jwt en las estrategias del passtport