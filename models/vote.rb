def update_vote(user_id, upvote, post_id)
  user = find_one_user_by_id(user_id)
  post = find_one_post_by_id(post_id)

  if upvote == "true" && post["upvote_users"].include?(user_id)
    redirect "/"
  else
    post["upvote_users"].push(user_id)
    post["upvote"] += 1
    user["upvoted_posts"].push(post_id)
    sql = "UPDATE users SET upvoted_post = $1 WHERE id = $3;"
    params = [user["upvoted_posts"], user_id]
    run_sql(sql, params)
  end
end

