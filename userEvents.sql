MariaDB [Calendar]> create table userEvents (
    -> id mediumint unsigned not null auto_increment,
    -> creator mediumint unsigned not null,
    -> title varchar(50) not null,
    -> date varchar(15) not null,
    -> time varchar(15) not null,
    -> primary key (id)
    -> ) engine = InnoDB default character set = utf8 collate = utf8_general_ci;
Query OK, 0 rows affected (0.01 sec)

MariaDB [NewsSite]> alter table userEvents add foreign key (creator) references user (id) on delete cascade;
MariaDB [NewsSite]> alter table userEvents add foreign key (creator) references user (id) on delete cascade;

MariaDB [Calendar]> describe userEvents;
+---------+-----------------------+------+-----+---------+----------------+
| Field   | Type                  | Null | Key | Default | Extra          |
+---------+-----------------------+------+-----+---------+----------------+
| id      | mediumint(8) unsigned | NO   | PRI | NULL    | auto_increment |
| creator | mediumint(8) unsigned | NO   |     | NULL    |                |
| title   | varchar(50)           | NO   |     | NULL    |                |
| date    | varchar(15)           | NO   |     | NULL    |                |
| time    | varchar(15)           | NO   |     | NULL    |                |
+---------+-----------------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

MariaDB [Calendar]> show create table userEvents;
+------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table      | Create Table                                                                                                                                                                                                                                                                          |
+------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| userEvents | CREATE TABLE `userEvents` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `creator` mediumint(8) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `date` varchar(15) NOT NULL,
  `time` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |
+------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)