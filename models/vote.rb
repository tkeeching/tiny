def all_vote
  sql = "SELECT * FROM votes;"
  params = []
  records = run_sql(sql, params)
end

def post_votes_by_user(user_id)
  sql = "SELECT post_id FROM votes WHERE user_id = $1;"
  params = [user_id]
  records = run_sql(sql, params)
end

def create_vote(post_id, user_id)
  sql = "INSERT INTO votes (post_id, user_id) VALUES ($1, $2);"
  params = [post_id, user_id]
  run_sql(sql, params)
end

def delete_vote(post_id)
  sql = "DELETE FROM votes where post_id = $1;"
  params = [post_id]
  run_sql(sql, params)
end

