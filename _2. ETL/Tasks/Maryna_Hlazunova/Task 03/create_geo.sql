CREATE OR REPLACE VIEW "GEO" AS
SELECT 'WOR'||W.WORLD_ID AS CHILD_ID, W.WORLD_ID AS SRC_ID, W.WORLD_CODE AS NATUR_CODE , W.WORLD_DESCRIPTION AS DESCRIPTION, NULL AS PARENT_ID FROM CE_WORLDS W
UNION ALL
SELECT 'CON'||C.CONTINENT_ID, C.CONTINENT_ID, C.CONTINENT_CODE, C.CONTINENT_DESCRIPTION, 'WOR'||C.WORLD_ID FROM CE_CONTINENTS C
UNION ALL
SELECT 'REG'||R.REGION_ID, R.REGION_ID, R.REGION_CODE, R.REGION_DESCRIPTION, 'CON'||R.CONTINENT_ID FROM CE_REGIONS R
UNION ALL
SELECT 'CNT'||CN.COUNTRY_ID, CN.COUNTRY_ID, CN.COUNTRY_CODE, CN.COUNTRY_DESCRIPTION, 'REG'||CN.REGION_ID FROM CE_COUNTRIES CN;