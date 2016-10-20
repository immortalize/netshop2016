CREATE USER 'bekir'@'%' IDENTIFIED BY 'Ukulele2014';
create database mydb;
GRANT ALL PRIVILEGES ON mydb.* TO 'bekir'@'%' WITH GRANT OPTION;

update mysql.db set Host='%' where Db='mydb';

UPDATE mysql.user SET host = '%' WHERE user = 'bekir';

-- netshop 2016 tables
drop table company cascade;

create table `company` (
  `id` int(11) not null auto_increment, 
  `name` varchar(50),
  primary key (`id`)  
)
engine=innodb default charset=utf8 COLLATE=utf8_unicode_ci;

create table `shop` (
  `id` int(11) not null auto_increment, 
  `company_id` int(11) not null, 
  `name` varchar(50),
  `web_address` varchar(50),
  primary key (`id`),
  CONSTRAINT `FK_company_shop` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
)
engine=innodb default charset=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `iller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ilceler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `il_id` int(11) DEFAULT NULL,
  `baslik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DF2497D4BAF0B6B8` (`il_id`),
  CONSTRAINT `FK_DF2497D4BAF0B6B8` FOREIGN KEY (`il_id`) REFERENCES `iller` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=968 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
