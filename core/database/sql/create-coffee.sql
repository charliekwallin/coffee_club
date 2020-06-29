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
  `image_file_name` VARCHAR(50),
  `date_added` timestamp NOT NULL,
  PRIMARY KEY (`coffee_id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders`(
  `user_id` int NOT NULL,
  `coffee_id` int NOT NULL,
  `qty` smallint NOT NULL,
  `date_ordered` timestamp NOT NULL,
  PRIMARY KEY(`user_id`, `coffee_id`),
  FOREIGN KEY fk_user_id (user_id)
    REFERENCES users(user_id),
  FOREIGN KEY fk_coffee_id (coffee_id)
    REFERENCES coffee(coffee_id)
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


INSERT INTO coffee VALUES(NULL, 'Summer Seasonal – Colombia Tolima', 'Columbia', 'Light', 'Juicy and bright, with flavors of cherry cola and vanilla', 13.95, 'image1', NOW());
INSERT INTO coffee VALUES(NULL, 'Suplicar Clemencia', 'Unknown', 'Dark', 'Roasty, Chocolaty, Honey Sweet', 13.95, 'image2', NOW());
INSERT INTO coffee VALUES(NULL, 'Sumatra Mandheling', 'Sumatra', 'Medium', 'Heavy mouthfeel, chocolate and earthy flavors', 13.95, 'image3', NOW());
INSERT INTO coffee VALUES(NULL, 'Peru San Ignacio', 'Peru', 'Light', 'Caramel, citrus, and nutty', 13.95, 'image4', NOW());

INSERT INTO orders VALUES (1, 2, 3, NOW());
INSERT INTO orders VALUES (1, 3, 1, NOW());
INSERT INTO orders VALUES (2, 4, 5, NOW());
INSERT INTO orders VALUES (3, 1, 1, NOW());
INSERT INTO orders VALUES (4, 2, 2, NOW());

DROP USER IF EXISTS 'ccuser'@'localhost';
FLUSH PRIVILEGES;
CREATE USER 'ccuser'@'localhost' IDENTIFIED BY 'ccsecret';
GRANT ALL ON ccdb.* TO 'ccuser'@'localhost';


