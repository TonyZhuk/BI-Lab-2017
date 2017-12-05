DROP TABLE ce_departments CASCADE CONSTRAINTS;
CREATE TABLE ce_departments
  (
    Department_id   NUMBER(8) PRIMARY KEY,
    Department_code NUMBER(8) NOT NULL,
    Department_name VARCHAR2(250) NOT NULL,
    insert_DT       DATE DEFAULT(sysdate) NOT NULL ,
    update_DT       DATE DEFAULT(sysdate) NOT NULL
  ); 