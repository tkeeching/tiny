def all_post()
  sql = "SELECT * FROM posts ORDER BY date_created DESC, time_created DESC;"
  params = []
  records = run_sql(sql, params)
end

def find_all_post_by_user(user_id)
  sql = "SELECT * FROM posts WHERE user_id = $1 ORDER BY date_created DESC, time_created DESC;"
  params = [user_id]
  records = run_sql(sql, params)
end

def find_one_post_by_id(id)
  sql = "SELECT * FROM posts WHERE id = $1;"
  params = [id]
  records = run_sql(sql, params)[0]
end

def create_post(content, user_id)
  sql = "INSERT INTO posts (content, date_created, time_created, user_id) VALUES ($1, $2, $3, $4);"
  params = [content, Time.now, Time.now, user_id]
  run_sql(sql, params)
end

def update_post(id, upvote, downvote, user_id)
  sql = "UPDATE posts SET upvote = $1, downvote = $2 WHERE id = $3;"
  params = [upvote, downvote, id]
  run_sql(sql, params)
end

def delete_post(id)
  sql = "DELETE FROM posts where id = $1;"
  params = [id]
  run_sql(sql, [id])
end

