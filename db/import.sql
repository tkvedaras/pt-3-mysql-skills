CREATE DATABASE `mysql_skills` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mysql_skills`;

CREATE TABLE `user` (
	id INT(11) NOT NULL AUTO_INCREMENT,
	name varchar(100) NULL,
	PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

CREATE TABLE `transactions` (
	id INT(11) NOT NULL AUTO_INCREMENT,
	user_id int(11) NOT NULL,
	amount decimal(10,2) NOT NULL,
	PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

INSERT INTO `transactions` (`user_id`,`amount`) VALUES (1,10.00),(1,-5.00),(3,30.00),(4,5.00);
INSERT INTO `user` (`name`) VALUES ('Tadas'),('Audrius'),('Rokas'),('Robertas');