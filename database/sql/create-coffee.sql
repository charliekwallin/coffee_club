DROP DATABASE IF EXISTS ccdb;
CREATE DATABASE ccdb;

USE ccdb;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` char(10) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `user_level` char(1) NOT NULL,
  `date_added` timestamp NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `coffee`;

CREATE TABLE `coffee` (
  `coffee_id` int NOT NULL AUTO_INCREMENT,
  `coffee_name` varchar(100) NOT NULL,
  `country_origin` varchar(50),
  `roast` varchar(25) NOT NULL,
  `notes` text NOT NULL,
  `cost_per_pound` decimal(15, 2) NOT NULL,
  `date_added` timestamp NOT NULL,
  PRIMARY KEY (`coffee_id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders`(
  `user_id` int NOT NULL,
  `coffee_id` int NOT NULL,
  `qty` smallint NOT NULL,
  `date_ordered` timestamp NOT NULL,
  PRIMARY KEY(`user_id`, `coffee_id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

INSERT INTO users VALUES (NULL, 'Lily', 'Black', 'lblack@web250.com', '8285554321', 'secret', 'm', NOW());
INSERT INTO users VALUES (NULL, 'Brandon', 'Gill', 'bgill@web250.com', '8285557676', 'secret', 'm', NOW());
INSERT INTO users VALUES (NULL, 'Jake', 'Alsop', 'jalsop@web250.com', '8285559896', 'secret', 'm', NOW());
INSERT INTO users VALUES (NULL, 'Joanne', 'Arnold', 'jarnold@web250.com', '8285553611', 'secret', 'a', NOW() );
INSERT INTO users VALUES (NULL, 'Molly', 'Black', 'mblack@web250.com', '8285551599', 'secret', 'm', NOW());
INSERT INTO users VALUES (NULL, 'Julia', 'Page', 'jpaige@web250.com', '8285550097', 'secret', 'm', NOW() );
INSERT INTO users VALUES (NULL, 'Donna', 'MacLeoad', 'dmacleod2@web250.com', '8285557833', 'secret', 'm', NOW());
INSERT INTO users VALUES (NULL, 'Frank', 'Ogden', 'fogden@web250.com', '8885556789', 'secret', 'm', NOW() );
INSERT INTO users VALUES (NULL, 'Sophie', 'Jackson', 'sjackson@web250.com', '8885555566', 'secret', 'm', NOW());
INSERT INTO users VALUES (NULL, 'Robert', 'Abraham', 'rabraham@web250.com', '8885558888', 'secret', 'm', NOW() );


INSERT INTO coffee VALUES(NULL, 'Summer Seasonal – Colombia Tolima', 'Columbia', 'Light', 'Juicy and bright, with flavors of cherry cola and vanilla', 13.95, NOW());
INSERT INTO coffee VALUES(NULL, 'Suplicar Clemencia', 'Unknown', 'Dark', 'Roasty, Chocolaty, Honey Sweet', 13.95, NOW());
INSERT INTO coffee VALUES(NULL, 'Sumatra Mandheling', 'Sumatra', 'Medium', 'Heavy mouthfeel, chocolate and earthy flavors', 13.95, NOW());
INSERT INTO coffee VALUES(NULL, 'Peru San Ignacio', 'Peru', 'Light', 'Caramel, citrus, and nutty', 13.95, NOW());

DROP USER IF EXISTS 'charlie'@'localhost';
FLUSH PRIVILEGES;
CREATE USER 'charlie'@'localhost' IDENTIFIED BY 'web250secret';
GRANT ALL ON ccdb.* TO 'charlie'@'localhost';


