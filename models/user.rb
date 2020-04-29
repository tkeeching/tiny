require "bcrypt"
require "pg"

def run_sql(sql, params)
  conn = PG.connect(dbname: "tiny")
  records = conn.exec_params(sql, params)
  conn.close
  return records
end

def insert_avatar
  avatar_dir = "/images/default_avatar.png"
end

def create_user(email, password)
  password_digest = BCrypt::Password.create(password)
  sql = "INSERT INTO users (email, password_digest, avatar) VALUES ($1, $2, $3);"
  params = [email, password_digest, insert_avatar]
  run_sql(sql, params)
end