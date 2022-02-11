DROP DATABASE IF EXISTS tomcat_realm;
CREATE DATABASE tomcat_realm;
USE tomcat_realm;
CREATE TABLE tomcat_users ( 
user_name varchar(20) NOT NULL PRIMARY KEY, 
password varchar(32) NOT NULL); 
CREATE TABLE tomcat_roles ( role_name varchar(20) NOT NULL PRIMARY KEY); 
CREATE TABLE tomcat_users_roles ( user_name varchar(20) NOT NULL, 
role_name varchar(20) NOT NULL, 
PRIMARY KEY (user_name, role_name),
CONSTRAINT tomcat_users_roles_foreign_key_1 FOREIGN KEY (user_name) 
REFERENCES tomcat_users (user_name), 
CONSTRAINT tomcat_users_roles_foreign_key_2 FOREIGN KEY (role_name) 
REFERENCES tomcat_roles (role_name) ); 
INSERT INTO tomcat_users (user_name, password) VALUES ('kevin', 'kevin'); 
INSERT INTO tomcat_users (user_name, password) VALUES ('guva', 'guva'); 
INSERT INTO tomcat_roles (role_name) VALUES ('proves'); 
INSERT INTO tomcat_users_roles (user_name, role_name) VALUES ('kevin', 'proves'); 
INSERT INTO tomcat_users_roles (user_name, role_name) VALUES ('guva', 'proves');
COMMIT;
