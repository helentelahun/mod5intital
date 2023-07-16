MariaDB [Calendar]> create table sharedEvents ( 
    -> id mediumint unsignednot not null auto_increment,
    -> firstname varchar(50) not null,
    -> lastname varchar(50) not null,
    -> username varchar(50) not  null,
    -> password_salt varchar(255) not null,
    -> primary key (id)
    -> ) engine = InnoDB default character set = utf8 collate = utf8_general_ci;
Query OK, 0 rows affected (0.00 sec)

MariaDB [NewsSite]> alter table userEvents add foreign key (creator) references user (id);

MariaDB [Calendar]> describe users;
+---------------+-----------------------+------+-----+---------+----------------+
| Field         | Type                  | Null | Key | Default | Extra          |
+---------------+-----------------------+------+-----+---------+----------------+
| id            | mediumint(8) unsigned | NO   | PRI | NULL    | auto_increment |
| firstname     | varchar(50)           | NO   |     | NULL    |                |
| lastname      | varchar(50)           | NO   |     | NULL    |                |
| username      | varchar(50)           | NO   |     | NULL    |                |
| password_salt | varchar(255)          | NO   |     | NULL    |                |
+---------------+-----------------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

MariaDB [Calendar]> show create table users;
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                              |
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| users | CREATE TABLE `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)