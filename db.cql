CREATE KEYSPACE IF NOT EXISTS dt WITH REPLICATION = {
  'class' : 'SimpleStrategy',
  'replication_factor' : 1 
};

USE dt;

# User
CREATE TABLE IF NOT EXISTS user (
  id text,
  email text,
  name text,
  password text,
  PRIMARY KEY (email)
);

# Twin Instance
CREATE TABLE IF NOT EXISTS twin (
  id UUID PRIMARY KEY, # uuid()
  name text,
  created_at timestamp # toTimestamp(now())
);

# Element
# id, name, twin, parent (element)

# Data Source
# id, name, type, element

# Data
# id, value, timestamp, source, created_at
