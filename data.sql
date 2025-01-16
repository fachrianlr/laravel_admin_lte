DROP ROLE dev;
CREATE ROLE dev LOGIN PASSWORD 'adminroot' CREATEDB;

CREATE DATABASE admin_lte;

GRANT ALL PRIVILEGES ON DATABASE "admin_lte" to dev;
GRANT CREATE ON SCHEMA public TO dev;

SELECT
  grantee,
  table_catalog,
  table_schema,
  table_name,
  privilege_type
FROM
  information_schema.role_table_grants
WHERE
  grantee = 'dev';
