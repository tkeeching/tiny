require "sinatra"
require "sinatra/reloader"
require_relative "models/user"
require_relative "models/post"
require_relative "lib/lib"

enable :sessions

get "/" do
  posts = all_post
  erb(:'/posts/index', locals: {posts: posts})
end

get "/login" do
  erb :'/sessions/login'
end

post "/login" do
  user = find_one_user_by_email(params[:email])

  if user && BCrypt::Password.new(user["password_digest"]) == params[:password]
    session[:user_id] = user["id"]
    redirect "/"
  else
    erb :'/sessions/login'
  end
end

delete "/logout" do
  session[:user_id] = nil
  redirect "/"
end

# Sign up
get "/users/new" do
  erb :'/users/new'
end

post "/users" do
  # if params[:email] != find_one_user_by_email(params[:email]) && params[:password] == params[:confirm_password]
  #   password_digest = BCrypt::Password.create(params[:password])
  #   create_user(params[:email], password_digest, username)
  #   new_account_created = true
  #   redirect "/login"
  # else
  #   redirect "/users/new"
  # end
end

get "/users/:id/posts" do
  posts = find_all_post_by_user(params[:id])
  erb(:'/posts/show', locals: {posts: posts})
end

delete "/users/:id/posts" do
  delete_post(params[:post_id])
  redirect "/users/#{ current_user["id"] }/posts"
end

# post "/posts/:id/edit" do
#   update_post(params[:id], params[:upvote], params[:downvote], current_user["id"])
#   redirect "/"
# end




