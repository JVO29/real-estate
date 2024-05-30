drop database realestatebroker;
create database realestatebroker;
use realestatebroker;

create table administrator (
	adminID int not null,
	adminPassword varchar(255),
    primary key (adminID)
);

create table realtor (
	realtorID int not null,
    realtorPassword varchar(255),
    realtorName varchar(255),
    email varchar(255),
    phoneNo varchar(255),
    images varchar(255),
    primary key (realtorID)
);

create table customer (
	customerID int not null,
    cusName varchar(255),
    email varchar(255),
    phoneNo varchar(255),
    preferredLocation varchar(255),
    preferredType varchar(255),
    preferredSize int,
    preferredPrice dec,
    primary key (customerID)
);

create table listing (
	listingID int not null,
    propertyType varchar(255),
    propertySize int,
    propertyPrice dec,
	propertyLocation varchar(255),
    yearBuilt year,
    images varchar(255),
    propertyStatus bool,
    primary key (listingID)
);

insert into customer values
(15805,"Kelsie Sellers","nunc.quis@aol.org","1-318-464-3656","Fort Laird","duplex",3764,"597037"),
(16683,"Linus Yang","ante.lectus.convallis@icloud.org","1-107-335-4088","Brandon","townhouse",1800,"4090552"),
(16868,"Noelle Dudley","dapibus.gravida@hotmail.couk","1-243-384-5681","Gloucester","single",1605,"3267530"),
(15535,"Beck Frederick","proin.mi@protonmail.couk","1-359-197-6445","Flin Flon","townhouse",3439,"245386"),
(18069,"Shannon Lindsey","aliquam.adipiscing.lacus@google.net","1-430-713-2807","Whitehorse","apartment",2799,"1531531");

insert into listing values 
(13111,"townhouse",3063,"686002","Glendon","2001","localhost::image/property/i/group/9?g=1",false),
(11177,"townhouse",1186,"2811322","Trochu","2000","localhost::image/property/i/user/110?client=g",true),
(18213,"single",2243,"769982","Bathurst","2021","localhost::image/property/i/fr?client=g",false),
(15140,"duplex",1579,"2992385","Annapolis Royal","1999","localhost::image/property/i/en-ca?page=1&offset=1",true),
(17807,"apartment",4362,"1059251","Rae-Edzo","2020","localhost::image/property/i/fr?str=se",true);

insert into administrator values
(13111,"qrekUV1sx665"),
(11177,"dnjxWQ7br134"),
(18213,"wvqhNM9bn592"),
(15140,"lurwLY3pv573"),
(17807,"myxiGU1jv118");

insert into realtor values
(13111,"qrekUV1sx665","Jin Parrish","risus.duis@icloud.couk","1-286-255-5225","localhost::image/realtor/r/settings?q=0"),
(11177,"dnjxWQ7br134","Denise England","non.ante.bibendum@google.ca","1-383-251-9264","localhost::image/realtor/r/sub?p=8"),
(18213,"wvqhNM9bn592","Price Ross","in@protonmail.com","1-665-782-3250","localhost::image/realtor/r/sub/cars?gi=100"),
(15140,"lurwLY3pv573","Quintessa Shepard","arcu@google.ca","1-464-268-5747","localhost::image/realtor/r/sub/cars?p=8"),
(17807,"myxiGU1jv118","Xander Nicholson","donec.at@hotmail.net","1-786-155-2139","localhost::image/realtor/r/group/9?ad=115");

DELETE FROM customer WHERE customerID IN (15805, 16683, 16868, 15535, 18069);

DELETE FROM listing WHERE listingID IN (13111, 11177, 18213, 15140, 17807);

DELETE FROM administrator WHERE adminID IN (13111, 11177, 18213, 15140, 17807);

DELETE FROM realtor WHERE realtorID IN (13111, 11177, 18213, 15140, 17807);

INSERT INTO customer VALUES
(20001, "John Doe", "amir.doe@eyahoo.com", "123-456-7890", "Cityville", "house", 2000, 500000),
(20002, "Jane Smith", "jane.smith@icloud.com", "987-654-3210", "Suburbia", "apartment", 1200, 300000),
(20003, "Bob Johnson", "conner.johnson@hotmail.com", "555-123-4567", "Countryside", "farmhouse", 5000, 800000);
