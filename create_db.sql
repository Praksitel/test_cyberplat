CREATE DATABASE IF NOT EXISTS  test_cyberplat;
CREATE USER tst_cbrplt_su WITH PASSWORD 'Ootahsh3';
GRANT ALL privileges ON DATABASE test_cyberplat TO tst_cbrplt_su;

CREATE SEQUENCE user_ids;

CREATE TABLE IF NOT EXISTS users
(id INTEGER PRIMARY KEY DEFAULT NEXTVAL('user_ids')
, name CHAR(64)
, email VARCHAR(64)
, created TIMESTAMPTZ
);