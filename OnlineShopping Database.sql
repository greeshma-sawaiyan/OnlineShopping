-- Create schema onlineshopping
--

CREATE DATABASE IF NOT EXISTS shop;
USE shop;

--
-- Definition of table `admintbl`
--

DROP TABLE IF EXISTS `admintbl`;
CREATE TABLE `admintbl` (
  `name` varchar(20) character set utf8 default NULL,
  `email` varchar(30) character set utf8 NOT NULL default '',
  `password` varchar(30) character set utf8 default NULL,
  `mobile` varchar(12) character set utf8 default NULL,
  `address` varchar(40) character set utf8 default NULL,
  `company` varchar(40) character set utf8 default NULL,
  `product` varchar(40) character set utf8 default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintbl`
--

/*!40000 ALTER TABLE `admintbl` DISABLE KEYS */;
INSERT INTO `admintbl` (`name`,`email`,`password`,`mobile`,`address`,`company`,`product`) VALUES 
 ('greeshma','g@gmail.com','123','9922334411','Raipur','SBI','Clothes'),
 ('rina','r@gmail.com','123','9876464132','pune','HP','Laptop'),
 ('manisha','m@gmail.com','123','9876453245','bangalore','motorola','Mobile');
/*!40000 ALTER TABLE `admintbl` ENABLE KEYS */


--
-- Definition of table `cloths`
--

DROP TABLE IF EXISTS `cloths`;
CREATE TABLE `cloths` (
  `brand` varchar(20) character set utf8 default NULL,
  `price` varchar(10) character set utf8 default NULL,
  `forperson` varchar(20) character set utf8 default NULL,
  `type` varchar(40) character set utf8 default NULL,
  `size` varchar(30) character set utf8 default NULL,
  `color` varchar(50) character set utf8 default NULL,
  `id` varchar(20) NOT NULL default '',
  `uploadedby` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cloths`
--

/*!40000 ALTER TABLE `cloths` DISABLE KEYS */;
INSERT INTO `cloths` (`brand`,`price`,`forperson`,`type`,`size`,`color`,`id`,`uploadedby`) VALUES 
 ('Zara','640','Women','dress','M','light red','1','g@gmail.com'),
 ('Dressberry','1603','Women','jumpsuit','L','green','2','g@gmail.com'),
 ('Allen Solly','1679','Men','Shirt','XL','blue','3','g@gmail.com');
/*!40000 ALTER TABLE `cloths` ENABLE KEYS */;


--
-- Definition of table `laptop`
--

DROP TABLE IF EXISTS `laptop`;
CREATE TABLE `laptop` (
  `brand` varchar(20) character set utf8 default NULL,
  `specification` varchar(40) character set utf8 default NULL,
  `price` varchar(50) character set utf8 default NULL,
  `clock` varchar(30) character set utf8 default NULL,
  `ram` varchar(30) character set utf8 default NULL,
  `hdd` varchar(30) character set utf8 default NULL,
  `system` varchar(40) character set utf8 default NULL,
  `battery` varchar(30) character set utf8 default NULL,
  `warranty` varchar(30) character set utf8 default NULL,
  `id` varchar(30) NOT NULL default '',
  `uploadedby` varchar(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laptop`
--

/*!40000 ALTER TABLE `laptop` DISABLE KEYS */;
INSERT INTO `laptop` (`brand`,`specification`,`price`,`clock`,`ram`,`hdd`,`system`,`battery`,`warranty`,`id`,`uploadedby`) VALUES 
 ('ASUS','4th gen/Ci5/4GB/MSDos','34000Rs','1.7Ghz','2.9','750GB','64 bit','3hr','1 year','0000000001','r@gmail.com'),
 ('Dell','4th gen/Ci5/4GB/Win8','43000Rs','1.7Ghz','2.9','500GB','64 bit','3hr','1 year','0000000002','r@gmail.com'),
 ('SONY','4th gen/Ci5/4GB/Win8','45000Rs','1.7Ghz','2.9','500GB','64 bit','3hr','1 year','0000000003','r@gmail.com'),
 ('Compaq','3rd gen /Ci3 /2GB/Win7','37000Rs','1.7Ghz','2.9','500GB','64 bit','3hr','1 year','0000000004','r@gmail.com'),
 ('HP','4th gen/Ci5/4GB/Win8','50000Rs','1.7Ghz','2.9','500GB','64 bit','3hr','1 year','0000000005','r@gmail.com'),
 ('Lenovo','4th gen/Ci5/4GB/Win8','43000Rs','1.7Ghz','2.9','500GB','64 bit','3hr','1 year','Laptop_5','r@gmail.com'),
 ('HP','4th gen/Ci5/4GB/Win8','37000Rs','1.7Ghz','2.9','500GB','32bit','3hr','3 year','Laptop_6','r@gmail.com'),
 ('SONY VAIO','4th gen/Ci5/4GB/Win8','43000Rs','1.7Ghz','2.9','500GB','64 bit','3hr','1 year','Laptop_7','r@gmail.com'),
 ('Dell','4th gen/Ci5/4GB/MSDos','37000Rs','1.7Ghz','2.9','750GB','64 bit','5 hr','1 year','Laptop_8','r@gmail.com');
/*!40000 ALTER TABLE `laptop` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `name` varchar(30) character set utf8 default NULL,
  `email` varchar(20) character set utf8 default NULL,
  `password` varchar(30) character set utf8 default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `mobile`
--

DROP TABLE IF EXISTS `mobile`;
CREATE TABLE `mobile` (
  `brand` varchar(20) character set utf8 default NULL,
  `model` varchar(30) character set utf8 default NULL,
  `price` varchar(12) character set utf8 default NULL,
  `sim` varchar(10) character set utf8 default NULL,
  `os` varchar(30) character set utf8 default NULL,
  `processor` varchar(30) character set utf8 default NULL,
  `size` varchar(20) character set utf8 default NULL,
  `camera` varchar(20) character set utf8 default NULL,
  `weight` varchar(20) character set utf8 default NULL,
  `battery` varchar(20) character set utf8 default NULL,
  `warranty` varchar(20) character set utf8 default NULL,
  `id` varchar(40) NOT NULL default '',
  `uploadedby` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile`
--

/*!40000 ALTER TABLE `mobile` DISABLE KEYS */;
INSERT INTO `mobile` (`brand`,`model`,`price`,`sim`,`os`,`processor`,`size`,`camera`,`weight`,`battery`,`warranty`,`id`,`uploadedby`) VALUES 
 ('Apple','i6','20000','single','ios','12','12','3','2.5','2days','1year','0000000001','m@gmail.com'),
 ('Samsung','S5222','6000','dual','Android 4.4','1.6ghz','12','10mp','100gm','1day on stand','1 year','0000000011','m@gmail.com'),
 ('Motorola','MOTO E','7000','Dual','Android kitkat','1.7','2GB','8','600gm','1day','1','0000000012','m@gmail.com'),
 ('ASUS','Asus Zenfone 4','5000Rs','Dula sim','Lolipop','2.9','13 inch','5 MP','200gm','1 day','1 year','Mobile_3','m@gmail.com'),
 ('CoolPad','Coolpad3','8999Rs','Dual4G','Android Lolipop','2.9','13 inch','13MP Back / 5MP back','280gm','1 day','1 year','Mobile_4','m@gmail.com');
/*!40000 ALTER TABLE `mobile` ENABLE KEYS */;


--
-- Definition of table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `name` varchar(20) character set utf8 default NULL,
  `email` varchar(30) character set utf8 default NULL,
  `mobile` varchar(14) character set utf8 default NULL,
  `state` varchar(20) character set utf8 default NULL,
  `city` varchar(30) character set utf8 default NULL,
  `pin` varchar(7) character set utf8 default NULL,
  `address` varchar(45) default NULL,
  `item` varchar(45) default NULL,
  `deliver` varchar(45) default NULL,
  `delevered_by` varchar(50) default NULL,
  `item_id` varchar(40) default NULL,
  `feedback` varchar(500) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` (`name`,`email`,`mobile`,`state`,`city`,`pin`,`address`,`item`,`deliver`,`delevered_by`,`item_id`,`feedback`) VALUES 
 ('isha','i@gmail.com','9791045439','up','SRM','232323','SRM univ','Cloths_5','delivered','g@gmail.com','Cloths_5',NULL),
 ('sina','s@gmail.com','9791045439','up','SRM','232323','hsadfhiasudfhiuhfvisif sldifhg','0000000012','delivered','s@gmail.com','0000000012',NULL);

/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;


--
-- Definition of table `usertbl`
--

DROP TABLE IF EXISTS `usertbl`;
CREATE TABLE `usertbl` (
  `name` varchar(30) character set utf8 default NULL,
  `email` varchar(30) character set utf8 NOT NULL default '',
  `password` varchar(30) character set utf8 default NULL,
  `mobile` varchar(12) character set utf8 default NULL,
  `address` varchar(60) character set utf8 default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertbl`
--

/*!40000 ALTER TABLE `usertbl` DISABLE KEYS */;
INSERT INTO `usertbl` (`name`,`email`,`password`,`mobile`,`address`) VALUES 
 ('Kusum','kusum@gmail.com','kusum','1234567890','kuhuhfhgfghf '),
 ('Shashi','shashi@gmail.com','shashi','9898989898','SRM Hostel.');
/*!40000 ALTER TABLE `usertbl` ENABLE KEYS */;


