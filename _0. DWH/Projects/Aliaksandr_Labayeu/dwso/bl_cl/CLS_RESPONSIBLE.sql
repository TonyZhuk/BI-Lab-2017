-- CLS_RESPONSIBLE
execute pkg_drop.DROP_proc('CLS_RESPONSIBLE','table');           
CREATE TABLE CLS_RESPONSIBLE
(
	"RESP_CODE" VARCHAR2(50),
	"FIRST_NAME" VARCHAR2(50),
	"LAST_NAME" VARCHAR2(50),
	"PHONE" VARCHAR2(50),
	"EMAIL" VARCHAR2(50),
	"BIRTHDAY" DATE,
	"AGE" NUMBER(3),
	"OCCUPATION_CODE" VARCHAR(20),
	"UPDATE_DT" DATE,
	"INSERT_DT" DATE DEFAULT TRUNC(SYSDATE)
)
;