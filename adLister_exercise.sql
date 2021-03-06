DROP DATABASE IF EXISTS adLister_exercise;
CREATE DATABASE IF NOT EXISTS adLister_exercise;
USE adLister_exercise;

CREATE TABLE users(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
user_email VARCHAR(100) NOT NULL,
user_password VARCHAR(30) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE ads(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
description VARCHAR (255) NOT NULL,
users_id INT UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(users_id) REFERENCES users(id)
);

CREATE TABLE category(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
type VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE ads_category(
ads_id INT UNSIGNED NOT NULL,
category_id INT UNSIGNED NOT NUll,
FOREIGN KEY(ads_id) REFERENCES ads(id),
FOREIGN KEY(category_id) REFERENCES category(id)
);

