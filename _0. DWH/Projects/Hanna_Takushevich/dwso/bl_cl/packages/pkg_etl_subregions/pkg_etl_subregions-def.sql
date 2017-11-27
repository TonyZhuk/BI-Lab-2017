CREATE OR REPLACE PACKAGE pkg_etl_subregions AUTHID CURRENT_USER
AS
  /**===============================================*\
  Name...............:   pkg_etl_subregions
  Contents...........:   Load data of subregion entity
  Author.............:   Hanna Takushevich
  Date...............:   25-11-2017
  \*=============================================== */
  
  /**
  * Load data to wrk table
  */
  PROCEDURE load_to_wrk;
   /**
  * Load data to cls table
  */
  PROCEDURE load_to_cls;
   /**
  * Load data to 3nf table
  */
  PROCEDURE load_to_3nf;
  
END pkg_etl_subregions;