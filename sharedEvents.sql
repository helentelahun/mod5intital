MariaDB [Calendar]> create table sharedEvents ( 
    -> id mediumint unsignednot not null auto_increment,
    -> event_id mediumint unsigned not null,
    -> user_id mediumint unsigned not  null,
    -> accept bit null,
    -> declined bit null,
    -> primary key (id)
    -> ) engine = InnoDB default character set = utf8 collate = utf8_general_ci;
Query OK, 0 rows affected (0.00 sec)

MariaDB [NewsSite]> alter table sharedEvents add foreign key (event_id) references userEvents (id) on delete cascade;
MariaDB [NewsSite]> alter table sharedEvents add foreign key (user_id) references user (id) on delete cascade;

MariaDB [Calendar]> describe sharedEvents;
+----------+-----------------------+------+-----+---------+----------------+
| Field    | Type                  | Null | Key | Default | Extra          |
+----------+-----------------------+------+-----+---------+----------------+
| id       | mediumint(8) unsigned | NO   | PRI | NULL    | auto_increment |
| event_id | mediumint(8) unsigned | NO   |     | NULL    |                |
| user_id  | mediumint(8) unsigned | NO   |     | NULL    |                |
| accepted | bit(1)                | YES  |     | NULL    |                |
| declined | bit(1)                | YES  |     | NULL    |                |
+----------+-----------------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

MariaDB [Calendar]> show create table sharedEvents;
+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table        | Create Table                                                                                                                                                                                                                                                                                               |
+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sharedEvents | CREATE TABLE `sharedEvents` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `accepted` bit(1) DEFAULT NULL,
  `declined` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |
+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)