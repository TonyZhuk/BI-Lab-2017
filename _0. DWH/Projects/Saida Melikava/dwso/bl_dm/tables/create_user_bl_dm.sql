EXECUTE pckg_drop.drop_proc(object_name=>'bl_dm',object_type=>'user');

  CREATE USER BL_DM
  IDENTIFIED BY 123456
  DEFAULT TABLESPACE users
  QUOTA UNLIMITED ON users
  TEMPORARY TABLESPACE temp
  PROFILE default;
  
grant create session to BL_DM;
EXEC system.pckg_grant.grant_proc(grant_name=>'CREATE ANY TABLE', user_name=>'BL_DM');
EXEC system.pckg_grant.grant_proc(grant_name=>'CREATE ANY PROCEDURE', user_name=>'BL_DM');
