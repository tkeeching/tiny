def all_post()
  sql = "SELECT * FROM posts ORDER BY id;"
  params = []
  records = run_sql(sql, params)
end

def create_post(content, user_id)
  sql = "INSERT INTO posts (content, date_created, time_created, user_id) VALUES ($1, $2, $3, $4);"
  params = [content, Time.now, Time.now, user_id]
  run_sql(sql, params)
end

def update_post(id, content, user_id)
  sql = "UPDATE posts SET content = $1 WHERE id = $2;"
  params = [content, id]
  run_sql(sql, params)
end

def delete_post(id, user_id)
  sql = "DELETE FROM posts where id = $1;"
  params = [id]
  run_sql(sql, [id])
end

