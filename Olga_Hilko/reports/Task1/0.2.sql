select  vsize(a) a_Size, vsize(b) b_Size, vsize(c) ?_Size, vsize(a)+vsize(b)+vsize(c) "a+b+c" from t;

select dbms_rowid.rowid_relative_fno(rowid), dbms_rowid.rowid_block_number( rowid)  from t;

-- 15

select from t;

-- 133

--alter system dump datafile 15 block 133;


