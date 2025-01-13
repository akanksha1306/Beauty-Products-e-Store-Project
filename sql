DROP TABLE Order_line_t  CASCADE CONSTRAINTS ; 
DROP TABLE PRODUCT_t  CASCADE CONSTRAINTS ; 
DROP TABLE ORDER_t  CASCADE CONSTRAINTS ; 
DROP TABLE CUSTOMER_t  CASCADE CONSTRAINTS ; 
CREATE TABLE CUSTOMER_t 
             (Customer_Id         number          NOT NULL, 
      Customer_Name       VARCHAR(25)    , 
      Customer_Address    VARCHAR(30)    , 
              Customer_City       VARCHAR(20)    ,               
              Customer_State      VARCHAR(2)     , 
              Postal_Code         VARCHAR(10)     , 
CONSTRAINT CUSTOMER_PK PRIMARY KEY (Customer_Id)); 
CREATE TABLE ORDER_t 
             (Order_Id            INTEGER        NOT NULL, 
      Customer_Id         number         , 
              Order_Date          DATE           , 
CONSTRAINT ORDER_PK PRIMARY KEY (Order_Id), 
CONSTRAINT ORDER_FK1 FOREIGN KEY (Customer_Id) REFERENCES CUSTOMER_t(Customer_Id)); 
CREATE TABLE PRODUCT_t 
             (Product_Id          number         NOT NULL, 
              Product_Line_Id     number         , 
              Product_Description VARCHAR(50)    , 
              Product_Finish      VARCHAR(20)    , 
              Standard_Price      Decimal(6,2)   , 
CONSTRAINT PRODUCT_PK PRIMARY KEY (Product_Id)); 
CREATE TABLE Order_line_t 
      (Order_Id            INTEGER        NOT NULL, 
              Product_Id          number         NOT NULL, 
              Ordered_Quantity    number         , 
CONSTRAINT Order_line_PK PRIMARY KEY (Order_Id, Product_Id), 
CONSTRAINT Order_line_FK1 FOREIGN KEY (Order_Id) REFERENCES ORDER_t(Order_Id), 
CONSTRAINT Order_line_FK2 FOREIGN KEY (Product_Id) REFERENCES  
PRODUCT_t(Product_Id)); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (1, 'Contemporary Casuals', '1355 S Hines Blvd', 'Gainesville', 'FL',  
'32601-2871'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (2, 'Value Furniture', '15145 S.W. 17th St.', 'Plano', 'TX', '75094-7743'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (3, 'Home Furnishings', '1900 Allard Ave.', 'Albany', 'NY', '12209-1125'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (4, 'Eastern Furniture', '1925 Beltline Rd.', 'Carteret', 'NJ', '07008- 
3188'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (5, 'Impressions', '5585 Westcott Ct.', 'Sacramento', 'CA', '94206-4056'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (6, 'Furniture Gallery', '325 Flatiron Dr.', 'Boulder', 'CO', '80514- 

4432'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (7, 'Period Furniture', '394 Rainbow Dr.', 'Seattle', 'WA', '97954-5589'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (8, 'Calfornia Classics', '816 Peach Rd.', 'Santa Clara', 'CA', '96915- 
7754'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (9, 'M and H Casual Furniture', '3709 First Street', 'Clearwater', 'FL',  
'34620-2314'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (10, 'Seminole Interiors', '2400 Rocky Point Dr.', 'Seminole', 'FL',  
'34646-4423'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (11, 'American Euro Lifestyles', '2424 Missouri Ave N.', 'Prospect Park',  
'NJ', '07508-5621'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (12, 'Battle Creek Furniture', '345 Capitol Ave. SW', 'Battle Creek', 'MI', 
'49015-3401'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (13, 'Heritage Furnishings', '66789 College Ave.', 'Carlisle', 'PA',  
'17013-8834'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (14, 'Kaneohe Homes', '112 Kiowai St.', 'Kaneohe', 'HI', '96744-2537'); 
INSERT INTO CUSTOMER_t  (Customer_Id, Customer_Name, Customer_Address,  
Customer_City, Customer_State, Postal_Code) 
VALUES  (15, 'Mountain Scenes', '4132 Main Street', 'Ogden', 'UT', '84403-4432'); 
INSERT INTO ORDER_t  (Order_Id, Order_Date, Customer_Id) 
VALUES  (1001, '21/Oct/04', 1); 
INSERT INTO ORDER_t  (Order_Id, Order_Date, Customer_Id) 
VALUES  (1002, '21/Oct/04', 8); 
INSERT INTO ORDER_t  (Order_Id, Order_Date, Customer_Id) 
VALUES  (1003, '22/Oct/04', 15); 
INSERT INTO ORDER_t  (Order_Id, Order_Date, Customer_Id) 
VALUES  (1004, '22/Oct/04', 5); 
INSERT INTO ORDER_t  (Order_Id, Order_Date, Customer_Id) 
VALUES  (1005, '24/Oct/04', 3); 
INSERT INTO ORDER_t  (Order_Id, Order_Date, Customer_Id) 
VALUES  (1006, '24/Oct/04', 2); 
INSERT INTO ORDER_t  (Order_Id, Order_Date, Customer_Id) 
VALUES  (1007, '27/Oct/04', 11); 
INSERT INTO ORDER_t  (Order_Id, Order_Date, Customer_Id) 
VALUES  (1008, '30/Oct/04', 12); 
INSERT INTO ORDER_t  (Order_Id, Order_Date, Customer_Id) 
VALUES  (1009, '05/Nov/04', 4); 
INSERT INTO ORDER_t  (Order_Id, Order_Date, Customer_Id) 
VALUES  (1010, '05/Nov/04', 1); 
INSERT INTO PRODUCT_t  (Product_Id, Product_Description, Product_Finish,  

Standard_Price) 
VALUES  (1, 'End Table', 'Cherry', 175); 
INSERT INTO PRODUCT_t  (Product_Id, Product_Description, Product_Finish,  
Standard_Price) 
VALUES  (2, 'Coffe Table', 'Natural Ash', 200); 
INSERT INTO PRODUCT_t  (Product_Id, Product_Description, Product_Finish,  
Standard_Price) 
VALUES  (3, 'Computer Desk', 'Natural Ash', 375); 
INSERT INTO PRODUCT_t  (Product_Id, Product_Description, Product_Finish,  
Standard_Price) 
VALUES  (4, 'Entertainment Center', 'Natural Maple', 650); 
INSERT INTO PRODUCT_t  (Product_Id, Product_Description, Product_Finish,  
Standard_Price) 
VALUES  (5, 'Writers Desk', 'Cherry', 325); 
INSERT INTO PRODUCT_t  (Product_Id, Product_Description, Product_Finish,  
Standard_Price) 
VALUES  (6, '8-Drawer Desk', 'White Ash', 750); 
INSERT INTO PRODUCT_t  (Product_Id, Product_Description, Product_Finish,  
Standard_Price) 
VALUES  (7, 'Dining Table', 'Natural Ash', 800); 
INSERT INTO PRODUCT_t  (Product_Id, Product_Description, Product_Finish,  
Standard_Price) 
VALUES  (8, 'Computer Desk', 'Walnut', 250); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1001, 1, 2); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1001, 2, 2); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1001, 4, 1); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1002, 3, 5); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1003, 3, 3); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1004, 6, 2); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1004, 8, 2); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1005, 4, 3); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1006, 4, 1); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1006, 5, 2); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1006, 7, 2); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1007, 1, 3); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1007, 2, 2); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1008, 3, 3); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1008, 8, 3); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1009, 4, 2); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 
VALUES  (1009, 7, 3); 
INSERT INTO Order_line_t  (Order_Id, Product_Id, Ordered_Quantity) 

VALUES  (1010, 8, 10); 
COMMIT; 
DESC Order_line_t; 
DESC ORDER_t; 
DESC PRODUCT_t; 
DESC CUSTOMER_t; 
