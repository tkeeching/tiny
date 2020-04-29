require "sinatra"
require "sinatra/reloader"
require_relative "models/user"
require_relative "models/post"

get "/" do
  posts = all_post
  erb(:'/posts/index', locals: {posts: posts})
end

get "/login" do
  erb :'/sessions/login'
end

get "/signup" do
  erb :'/sessions/signup'
end





