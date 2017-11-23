SELECT PARENT_ID, NAME,
  LTRIM ( SYS_CONNECT_BY_PATH ( NAME, '==>' ), '==>' ) AS PATH,
  CASE
    WHEN LEVEL = 4 AND CONNECT_BY_ISLEAF = 1
    THEN 'LEAF'
    WHEN LEVEL = 3 AND CONNECT_BY_ISLEAF = 0
    THEN 'BRANCH'
    WHEN LEVEL = 2 AND CONNECT_BY_ISLEAF = 0
    THEN 'BRANCH'
    WHEN LEVEL = 1 AND CONNECT_BY_ISLEAF = 0
    THEN 'ROOT'
  END AS DEFINITION,
  (SELECT COUNT(*) 
   FROM DIM_LOCATION DL 
   WHERE DIM.PARENT_ID=CHILD_ID
  ) AS AMOUNT_OF_CHILDREN
FROM DIM_LOCATION DIM
  START WITH CHILD_ID      IS NULL
  CONNECT BY PRIOR PARENT_ID = CHILD_ID
ORDER SIBLINGS BY 2;
