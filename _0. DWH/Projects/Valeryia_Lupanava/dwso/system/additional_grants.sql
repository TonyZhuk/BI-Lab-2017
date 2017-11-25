BEGIN
  pkg_grants.user_grant(grant_name => 'CREATE ANY DIRECTORY', user_name => 'SA_SRC');
END;
------------------------------------------------------------------------------------------------------
BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'READ ON DIRECTORY external_geo_tables', USER_NAME => 'SA_SRC');
END;
------------------------------------------------------------------------------------------------------
BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'READ ON DIRECTORY external_cust_tables', USER_NAME => 'SA_SRC');
END;
------------------------------------------------------------------------------------------------------
BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'READ ON DIRECTORY external_emp_tables', USER_NAME => 'SA_SRC');
END;
------------------------------------------------------------------------------------------------------
BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'READ ON DIRECTORY external_ext_tables', USER_NAME => 'SA_SRC');
END;
------------------------------------------------------------------------------------------------------
BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'UNLIMITED TABLESPACE', USER_NAME => 'BL_3NF');
END;
------------------------------------------------------------------------------------------------------
BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'CREATE PUBLIC SYNONYM', USER_NAME => 'SA_SRC_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'CREATE SYNONYM', USER_NAME => 'SA_SRC_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'CREATE PUBLIC SYNONYM', USER_NAME => 'BL_CL_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'CREATE SYNONYM', USER_NAME => 'BL_CL_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'CREATE PUBLIC SYNONYM', USER_NAME => 'BL_3NF_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'CREATE SYNONYM', USER_NAME => 'BL_3NF_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'INSERT', SCHEMA_NAME => 'BL_CL_LAB', OBJECT_NAME => 'WRK_CN', USER_NAME => 'BL_CL_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'INSERT', SCHEMA_NAME => 'BL_CL_LAB', OBJECT_NAME => 'WRK_CS', USER_NAME => 'BL_CL_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'INSERT', SCHEMA_NAME => 'BL_CL_LAB', OBJECT_NAME => 'WRK_FD', USER_NAME => 'BL_CL_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'INSERT', SCHEMA_NAME => 'BL_CL_LAB', OBJECT_NAME => 'CLS_COUNTRIES', USER_NAME => 'BL_CL_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'INSERT', SCHEMA_NAME => 'BL_CL_LAB', OBJECT_NAME => 'CLS_REGIONS', USER_NAME => 'BL_CL_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'INSERT', SCHEMA_NAME => 'BL_CL_LAB', OBJECT_NAME => 'CLS_CONTINENTS', USER_NAME => 'BL_CL_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'INSERT', SCHEMA_NAME => 'BL_3NF_LAB', OBJECT_NAME => 'CE_COUNTRIES', USER_NAME => 'BL_3NF_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'INSERT', SCHEMA_NAME => 'BL_3NF_LAB', OBJECT_NAME => 'CE_REGIONS', USER_NAME => 'BL_3NF_LAB');
END;

BEGIN
  pkg_grants.USER_GRANT(GRANT_NAME => 'INSERT', SCHEMA_NAME => 'BL_3NF_LAB', OBJECT_NAME => 'CE_CONTINENTS', USER_NAME => 'BL_3NF_LAB');
END;



