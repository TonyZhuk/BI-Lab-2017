--INSERT TO WRK_DELIVERY_METHODS.
TRUNCATE TABLE WRK_DELIVERY_METHODS;
INSERT INTO WRK_DELIVERY_METHODS
SELECT * FROM SA_SRC.EXT_DELIVERY_METHODS;
commit;