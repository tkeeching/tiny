def create_test(num)
  sql = "INSERT INTO test(arr) VALUES ($1);"
  params = [num]
  run_sql(sql, params)
end

def update_arr(id, num)
  sql = "UPDATE test SET arr = $1 where id = $2;"
  params = [num, id]
  run_sql(sql, params)
end

def update_arr_last(id, num)
  sql = "UPDATE test SET arr[2] = $1 where id = $2;"
  params = [num, id]
  run_sql(sql, params)
end

def select_arr(id)
  sql = "SELECT * FROM test where id = $1;"
  params = [id]
  run_sql(sql, params)[0]
end

def check_arr_length(id)
  sql = "SELECT array_length(arr, 1) FROM test WHERE id = $1;"
  params = [id]
  run_sql(sql, params)[0]
end

def find_one_number_in_arr(num)
  sql = "SELECT arr FROM test WHERE $1 = ANY (arr);"
  params = [num]
  run_sql(sql, params)[0]
end