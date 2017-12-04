-- CLS_DELIVERY_METHODS.
DROP TABLE cls_delivery_methods;
CREATE TABLE cls_delivery_methods
  (
    delivery_method_id VARCHAR2 ( 200 CHAR ) NOT NULL,
    delivery_method    VARCHAR2 ( 200 CHAR ) NOT NULL,
    start_dt          DATE DEFAULT '01-JAN-1990',
    end_dt            DATE DEFAULT '31-DEC-9999',
    is_active         VARCHAR2 ( 200 CHAR ) NOT NULL
  );