MariaDB [Calendar]> create table sharedEvents ( 
    -> id mediumint unsignednot not null auto_increment,
    -> event_id mediumint unsigned not null,
    -> user_id mediumint unsigned not  null,
    -> accept bit null,
    -> declined bit null,
    -> primary key (id)
    -> ) engine = InnoDB default character set = utf8 collate = utf8_general_ci;
Query OK, 0 rows affected (0.00 sec)



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