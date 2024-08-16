

CREATE DATABASE new_database
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE = template0;

GRANT TEMPORARY, CONNECT ON DATABASE new_database TO PUBLIC;

GRANT ALL ON DATABASE new_database TO postgres;

\c new_database

CREATE SCHEMA IF NOT EXISTS staging
    AUTHORIZATION postgres;
