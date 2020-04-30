require "bcrypt"
require "pg"

def run_sql(sql, params)
  conn = PG.connect(ENV['DATABASE_URL'] || {dbname: 'tiny'})
  records = conn.exec_params(sql, params)
  conn.close
  return records
end

def insert_avatar
  avatar_dir = "/images/default_avatar.png"
end

def create_user(email, password, name)
  password_digest = BCrypt::Password.create(password)
  sql = "INSERT INTO users (email, password_digest, avatar, username) VALUES ($1, $2, $3, $4);"
  params = [email, password_digest, insert_avatar, name]
  run_sql(sql, params)
end

def find_one_user_by_id(user_id)
  sql = "SELECT * FROM users WHERE id = $1;"
  params = [user_id]
  run_sql(sql, params)[0]
end

def find_one_user_by_email(email)
  sql = "SELECT * FROM users WHERE email = $1;"
  params = [email]
  run_sql(sql, params)[0]
end
