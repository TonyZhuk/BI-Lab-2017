CREATE USER bl_3nf 
IDENTIFIED BY "123" 
DEFAULT TABLESPACE tbs_pdb_test;

GRANT CONNECT TO bl_3nf;
GRANT RESOURCE TO bl_3nf;