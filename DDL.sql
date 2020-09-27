CREATE TABLE Costumer (
	Costumer_id VARCHAR2(20) PRIMARY KEY,
	costumer_Name VARCHAR2(20) NOT NULL,
	costumer_Tel NUMBER
);

CREATE TABLE Product (
	Product_id VARCHAR2(20) PRIMARY KEY,
	Product_name VARCHAR2(20) NOT NULL,
	Price NUMBER CHECK (NUMBER > 0)
);

CREATE TABLE Orders (
	quantity NUMBER,
	total amount NUMBER,
    FOREIGN KEY (Costumer_id) REFERENCES Costumer (Costumer_id),
    FOREIGN KEY (Product_id) REFERENCES Product (Product_id)     
);

---------------------------------------------------------------------------


ALTER TABLE Product ADD Category VARCHAR2(20);
ALTER TABLE Orders ADD OrderDate Date DEFAULT SYSDATE;