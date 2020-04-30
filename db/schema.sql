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

CREATE TABLE test (
  id SERIAL PRIMARY KEY,
  content VARCHAR(150),
  date_created DATE,
  time_created TIME WITH TIME ZONE,
  upvote INTEGER,
  downvote INTEGER,
  user_id INTEGER,
  upvote_users INTEGER[]
);

CREATE TABLE votes (
  id SERIAL PRIMARY KEY,
  post_id INTEGER,
  user_id INTEGER
);

ALTER TABLE users ADD COLUMN avatar TEXT;
ALTER TABLE users ADD COLUMN name VARCHAR(30);
ALTER TABLE users ADD COLUMN upvoted_post TEXT;
ALTER TABLE posts ADD COLUMN upvote_user TEXT;

ALTER TABLE posts RENAME COLUMN upvote_user TO upvote_users;

ALTER TABLE posts ALTER COLUMN upvote_users TYPE INTEGER[] USING upvote_users::integer[];
ALTER TABLE posts ALTER COLUMN upvote_users TYPE TEXT[];
ALTER TABLE users ALTER COLUMN upvoted_posts TYPE INTEGER[] USING upvoted_posts::integer[];


UPDATE posts SET upvote_users = '{0}' where id = 4;
UPDATE posts SET upvote_users = '{0}' where id = 5;
UPDATE posts SET upvote_users = '{0}' where id = 7;
UPDATE posts SET upvote_users = '{0}' where id = 9;
UPDATE posts SET upvote_users = '{0}' where id = 10;
UPDATE posts SET upvote_users = '{0}' where id = 11;
UPDATE posts SET upvote_users = '{0}' where id = 12;
UPDATE posts SET upvote_users = '{0}' where id = 13;
UPDATE posts SET upvote_users = '{0}' where id = 14;
UPDATE posts SET upvote_users = '{0}' where id = 15;
UPDATE posts SET upvote_users = '{0}' where id = 16;
UPDATE posts SET upvote_users = '{0}' where id = 17;
UPDATE posts SET upvote_users = '{0}' where id = 18;
UPDATE posts SET upvote_users = '{0}' where id = 6;
UPDATE posts SET upvote_users = '{0}' where id = 19;
UPDATE posts SET upvote_users = '{0}' where id = 20;
UPDATE posts SET upvote_users = '{0}' where id = 21;
UPDATE posts SET upvote_users = '{0}' where id = 23;
UPDATE posts SET upvote_users = '{0}' where id = 24;
UPDATE posts SET upvote_users = '{0}' where id = 20;
