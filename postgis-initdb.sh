#!/bin/bash

echo "deploy database DDL and some test data"

docker exec -it pg01 psql -d YOUR_DB_NAME -U postgres -c "

DROP SCHEMA IF EXISTS test_model CASCADE;

CREATE SCHEMA test_model AUTHORIZATION postgres;

DROP TABLE IF EXISTS test_model.test_table;

CREATE TABLE test_model.test_table (
	id char(3) PRIMARY KEY,
    feature_name varchar NULL
);"