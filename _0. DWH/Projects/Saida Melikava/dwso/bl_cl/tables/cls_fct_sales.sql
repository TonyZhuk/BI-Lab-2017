EXECUTE pckg_drop.drop_proc(object_name=>'cls_fct_sales', object_type=>'table');
CREATE TABLE cls_fct_sales
  (
    Event_dt                DATE ,
    Fct_customer_id         NUMBER(8) ,
    Fct_employee_id         NUMBER(8) ,
    Fct_store_id            NUMBER(8) ,
    Fct_product_id          NUMBER(8) ,
    Fct_payment_id          NUMBER(8) ,
    Fct_check_id            NUMBER(8) ,
    Fct_quantity            NUMBER(5) ,
    Fct_discount            NUMBER(5,3) ,
    Fct_unit_price_BYN      NUMBER(10,2) ,
    Fct_unit_price_disc_BYN NUMBER(10,2) ,
    Fct_sales_Amount_BYN    NUMBER(10,2) ,
    Fct_BYN_USD             NUMBER(8,3) ,
    Fct_unit_price_USD     generated always AS (Fct_BYN_USD * Fct_unit_price_BYN),
    Fct_unit_price_disc_USD generated always AS (Fct_BYN_USD * Fct_unit_price_disc_BYN) ,
    Fct_sales_Amount_USD   generated always AS (Fct_BYN_USD * Fct_sales_Amount_BYN )
    );
