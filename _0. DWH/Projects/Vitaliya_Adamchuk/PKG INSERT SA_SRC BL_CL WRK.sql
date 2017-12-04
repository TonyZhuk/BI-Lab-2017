
CREATE OR REPLACE PACKAGE  WRK_INSERT_PKG AS 
PROCEDURE WRK_INSERT (EXT_TABLE_NAME IN VARCHAR2, WRK_TABLE_NAME IN VARCHAR2);
   END;
  / 
  
  CREATE OR REPLACE PACKAGE body  WRK_INSERT_PKG AS  
 PROCEDURE WRK_INSERT (EXT_TABLE_NAME IN VARCHAR2, WRK_TABLE_NAME IN VARCHAR2)AS
   BEGIN
    EXECUTE IMMEDIATE 'INSERT INTO '||WRK_TABLE_NAME||' SELECT * FROM '|| EXT_TABLE_NAME;
   END;
   END WRK_INSERT_PKG;
  / 
  
  
  --SA_SRC-->BL_CL WRK
  
   EXECute WRK_INSERT_PKG.WRK_INSERT('SA_SRC.EXT_MANAGERS','WRK_MANAGERS');
   EXECute WRK_INSERT_PKG.WRK_INSERT('SA_SRC.EXT_RET_ORDERS','WRK_RET_ORDERS');
   EXECute WRK_INSERT_PKG.WRK_INSERT('SA_SRC.EXT_ORDERS','WRK_ORDERS');
   
   
   