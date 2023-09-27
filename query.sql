USE YUNUSDB

/*  CREATION OF TABLES  */
 

CREATE TABLE User_Data(
    ID INT PRIMARY KEY NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL

)


SELECT * FROM User_Data

CREATE TABLE Product_Data(
    ID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Price FLOAT NOT NULL,
    Count INT NOT NULL
)

SELECT * FROM Product_Data


CREATE TABLE Purchase_Data(
    User_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Date DATE NOT NULL,
    Price FLOAT NOT NULL
)

SELECT * FROM Purchase_Data



CREATE TABLE Most_Sold(
    Product_ID INT NOT NULL,
    Sold_Count INT NOT NULL,
    Most_Recent_Sale DATE NOT NULL
 )

SELECT * FROM Most_Sold


 /* END OF CREATION OF TABLES */





/* CREATION OF RELATIONSHIPS */

ALTER TABLE Most_Sold
ADD CONSTRAINT FK_Product_ID
FOREIGN KEY(Product_ID) REFERENCES Product_Data(ID)


ALTER TABLE Purchase_Data
ADD CONSTRAINT PK_Purchase_Data 
PRIMARY KEY (User_ID, Product_ID);

ALTER TABLE Product_Data
ADD CONSTRAINT UQ_Const_Product
UNIQUE (Price)



ALTER TABLE Purchase_Data
ADD CONSTRAINT FK_Price_Purchase_Data
FOREIGN KEY(Price) REFERENCES Product_Data(Price)


/* END OF CREATION OF RELATIONSHIPS */



/* INSERT DATA */


INSERT INTO User_Data (
[ID],
[Email],
[Name],
[Surname]
)

VALUES(

1,
'yunusemrevurgun@hotmail.com',
'Yunus',
'Vurgun'

),
(

2,
'jacobhenderson@hotmail.com',
'Jacob',
'Handerson'

),
(

3,
'fredericfreeman@hotmail.com',
'Frederic',
'Freeman'

),
(

4,
'johnnyfreedom@hotmail.com',
'Johnny',
'Freedom'

),
(

5,
'albertdaniels@hotmail.com',
'Albert',
'Daniels'

),
(

6,
'hanszuckerman@hotmail.com',
'Hans',
'Zuckerman'

),
(

7,
'timmy234@hotmail.com',
'Timmy',
'Nielson'

),
(

8,
'nicole33@hotmail.com',
'Nicole',
'Flowersome'

)
 

SELECT * FROM dbo.User_Data


INSERT INTO Product_Data(
ID,
Name,
Price,
Count
 )
 VALUES(
1,
'Apple Watch',
233.23,
45
 ),

 (
2,
'MacBook Pro',
1233.23,
5
 ),

 (
3,
'Green Sheets',
76.00,
199
 ),

 
 (
4,
'Socks',
2.13,
550
 ),

 (
5,
'Glasses',
134.11,
324
 ),

 (
6,
'Salad Bowl',
71.00,
129
 )

SELECT * FROM dbo.Product_Data



INSERT INTO Purchase_Data(
User_ID,
Product_ID,
[Date],
Price
)
VALUES(
1,
1,
'2023-10-5',
233.23
),
(
2,
1,
'2023-11-23',
233.23
),
(
3,
2,
'2023-04-13',
1233.23
),
(
5,
6,
'2023-02-13',
71.00
),
(
1,
4,
'2023-01-11',
2.13
) 

/* END OF INSERT DATA */






/* SEARCH QUERIES */

/* END OF SEARCH QUERIES */
