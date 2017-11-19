DROP TABLE Dim_Customers;
CREATE TABLE Dim_Customers
  (
    Customer_id           NUMBER(8) PRIMARY KEY,
    Customer_code         VARCHAR2(15) NOT NULL,
    Customer_name         VARCHAR2(35) NOT NULL,
    Customer_surname      VARCHAR2(35) NOT NULL,
    Customer_email        VARCHAR2(65) NOT NULL,
    Customer_phone        VARCHAR2(30) NOT NULL,
    Customer_age          NUMBER(3) NOT NULL,
    Customer_card         VARCHAR2(30) NOT NULL,
    Customer_card_expires VARCHAR2(10) NOT NULL,
    Customer_region_id    NUMBER(8) NOT NULL,
    Customer_region       VARCHAR2(60) NOT NULL,
    Customer_country_id   NUMBER(8) NOT NULL,
    Customer_country      VARCHAR2(60) NOT NULL,
    Customer_city_id      NUMBER(8) NOT NULL,
    Customer_city         VARCHAR2(60) NOT NULL,
    Customer_address_id   NUMBER(8) NOT NULL,
    Customer_address      VARCHAR2(60) NOT NULL,
    Customer_postal_code  VARCHAR2(20),
    Insert_DT             DATE NOT NULL,
    Update_DT             DATE NOT NULL
  );
COMMENT ON TABLE Dim_Customers
IS
  'Table Content: All custmers of publishing house are stored here.   
Refresh Cycle/Window: Data is loaded quite often and for a long period of time.  
';
  COMMENT ON column Dim_Customers.Customer_id
IS
  'Dimension surrogate key';
  COMMENT ON column Dim_Customers.Customer_code
IS
  'Dimension business key, comes from external system.';
  COMMENT ON column Dim_Customers.Customer_card
IS
  'Customer card number,like: 4929 7798 1456 9983';
  COMMENT ON column Dim_Customers.Customer_card_expires
IS
  'Until when card is valid';
  COMMENT ON column Dim_Customers.Customer_Region_id
IS
  'ID on region if additional join is needed.';
  COMMENT ON column Dim_Customers.Customer_Country_id
IS
  'ID on country if additional join  is needed.';
  COMMENT ON column Dim_Customers.Customer_City_id
IS
  'ID on city if additional join  is needed.';
  COMMENT ON column Dim_Customers.Customer_Address_id
IS
  'ID on address if additional join  is needed.';
  COMMENT ON column Dim_Customers.Insert_DT
IS
  'When data was loaded';
  COMMENT ON column Dim_Customers.Update_DT
IS
  'When data was updated';
  /* GRANT SELECT ON dim_template TO some_user;*/
