EXECUTE pckg_drop.drop_proc(object_name=>'cls_category', object_type=>'table');
CREATE TABLE cls_category
  (
    category_id   NUMBER(8),
    category_name VARCHAR2(150 CHAR),
    category_desc VARCHAR2(500 CHAR)
  );
