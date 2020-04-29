CREATE DATABASE tiny;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255),
  password_digest TEXT
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  content VARCHAR(150),
  date_created DATE,
  time_created TIME WITH TIME ZONE,
  upvote INTEGER,
  downvote INTEGER,
  user_id INTEGER
);

ALTER TABLE users ADD COLUMN avatar TEXT;
ALTER TABLE users ADD COLUMN name VARCHAR(30);

