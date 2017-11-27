EXECUTE pckg_drop.drop_proc(object_name=>'cls_category', object_type=>'table');
CREATE TABLE cls_category
  (
    category_id   NUMBER(8),
    category_name VARCHAR2(150 CHAR),
    category_desc VARCHAR2(500 CHAR)
  );
/
TRUNCATE TABLE cls_category;
INSERT
INTO cls_category VALUES
  (
    '1',
    'Печатные книги',
    ' 

В отличие от электронных книг, при чтении печатного издания наш мозг воспринимает поступающую информацию в несколько раз быстрее,
а значит и скорость чтения увеличивается.
'
  );
INSERT
INTO cls_category VALUES
  (
    '2',
    'Электронные книги',
    'Ваш дом превратился в филиал городской библиотеки? Освободите пространство для жизни.
Вы можете позволить себе иметь десятки тысяч любимых книг, но при этом они все уместятся на Вашей ладони.
'
  );
  INSERT
INTO cls_category VALUES
  (
    '-99',
    'N/D',
    'N/D'
  );
  
SELECT * FROM cls_category;