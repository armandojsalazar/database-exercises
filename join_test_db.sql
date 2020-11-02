DROP DATABASE IF EXISTS join_test_db;
CREATE DATABASE IF NOT EXISTS join_test_db;
USE join_test_db;



CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

INSERT INTO users (name,email,role_id)
VALUES ('Ken', 'Ken@codeup.com', 2),
        ('Doug', 'doug@codeup.com', 2),
        ('Fer', 'fer@codeup.com', null),
        ('Daniel', 'daniel@codeup.com', 2);

SELECT u.name AS user_name, r.name AS role_name
FROM users AS u
JOIN roles AS r
ON r.id = u.role_id;

#left join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

#right join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

