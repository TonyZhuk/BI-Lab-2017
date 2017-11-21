exec  FRAMEWORK.pkg_utl_drop.proc_drop_obj ('CL_Payment', 'TABLE');
exec  FRAMEWORK.pkg_utl_drop.proc_drop_obj ('SEQ_CL_Payment_ID_PAYMENT', 'SEQUENCE');

CREATE TABLE CL_Payment
(
	ID_PAYMENT NUMBER(16) NOT NULL,
	ID_CURRENCY VARCHAR2(3) NOT NULL,
	ID_CUSTOMER NUMBER(10),
	ID_PAYMENT_TYPE NUMBER(2) NOT NULL,
	PAYMENT_DATE DATE NOT NULL,
	PRICE NUMBER(8,2) NOT NULL,
	PAYMENT_TIME TIMESTAMP(6),
	ID_STATION NUMBER(4) NOT NULL,
  LOCATION_DECS VARCHAR2(100)
)
;

CREATE SEQUENCE SEQ_CL_Payment_ID_PAYMENT 
	INCREMENT BY 1 
	START WITH 1 
	NOMAXVALUE 
	MINVALUE  1 
	NOCYCLE 
	NOCACHE 
	NOORDER
;

ALTER TABLE CL_Payment 
 ADD CONSTRAINT PK_CL_Payment
	PRIMARY KEY (ID_PAYMENT) USING INDEX
;

GRANT select on BL_CL2.SEQ_CL_Payment_ID_PAYMENT to Public;
/*
ALTER TABLE CL_Payment 
 ADD CONSTRAINT PK_PAYMENTS
	PRIMARY KEY (ID_PAYMENT) USING INDEX
;

ALTER TABLE CL_Payment 
 ADD CONSTRAINT FK_Payment_Currency
	FOREIGN KEY (ID_CURRENCY) REFERENCES Currency (ID_CURRENCY)
;

ALTER TABLE CL_Payment 
 ADD CONSTRAINT FK_Payment_Customer
	FOREIGN KEY (ID_CUSTOMER) REFERENCES Customer (ID_CUSTOMER)
;

ALTER TABLE CL_Payment 
 ADD CONSTRAINT FK_Payment_Payment_Type
	FOREIGN KEY (ID_PAYMENT_TYPE) REFERENCES Payment_Type (ID_PAYMENT_TYPE)
;

ALTER TABLE CL_Payment 
 ADD CONSTRAINT FK_Payment_Station
	FOREIGN KEY (ID_STATION) REFERENCES Station (ID_STATION)
;*/




/*exec  FRAMEWORK.pkg_utl_drop.proc_drop_obj ('SEQ_BL_3NF_Payment_Type_ID_PT', 'SEQUENCE');
CREATE SEQUENCE SEQ_BL_3NF_Payment_Type_ID_PT 
	INCREMENT BY 1 
	START WITH 1 
	NOMAXVALUE 
	MINVALUE  1 
	NOCYCLE 
	NOCACHE 
	NOORDER
;


exec  FRAMEWORK.pkg_utl_drop.proc_drop_obj ('SEQ_BL_3NF_Currency_ID_CURR', 'SEQUENCE');
CREATE SEQUENCE SEQ_BL_3NF_Currency_ID_CURR 
	INCREMENT BY 1 
	START WITH 1 
	NOMAXVALUE 
	MINVALUE  1 
	NOCYCLE 
	NOCACHE 
	NOORDER
;*/

