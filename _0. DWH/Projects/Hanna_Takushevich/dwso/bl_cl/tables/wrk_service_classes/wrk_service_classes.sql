--==============================================================
-- Table: t_wrk_service_classes
--==============================================================
EXECUTE system.pkg_drop_object.drop_proc(Object_Name=>'wrk_service_classes', Object_Type=>'TABLE');
CREATE TABLE wrk_service_classes (
    class_name     VARCHAR2(20),
    seat_letter VARCHAR2(1),
    menu VARCHAR2(50),
    max_luggage varchar2(3),
    class_desc varchar2(100)
);