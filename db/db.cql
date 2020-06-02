CREATE KEYSPACE IF NOT EXISTS dt WITH REPLICATION = {
  'class' : 'SimpleStrategy',
  'replication_factor' : 1 
};

USE dt;

CREATE TABLE IF NOT EXISTS user (
  id UUID,
  email text,
  name text,
  password text,
  PRIMARY KEY (email)
);

CREATE TABLE IF NOT EXISTS twin (
  id UUID,
  name text,
  created_at timestamp,
  owner UUID,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS element (
  id UUID,
  twin UUID,
  name text,
  created_at timestamp,
  parent UUID,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS source (
  id UUID,
  name text,
  element UUID,
  created_at timestamp,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS source_data (
  source UUID,
  stamp timestamp,
  value text,
  created_at timestamp,
  PRIMARY KEY (source, stamp)
);

