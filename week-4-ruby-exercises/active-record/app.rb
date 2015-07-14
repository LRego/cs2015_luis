require "sinatra"
require "sinatra/activerecord"

set :database, {adapter: "sqlite3", database: "example.sqlite3"}

class User < ActiveRecord::Base
end

get "/" do
  @users = User.all
  erb :index
end

post "/users/create" do
  user = User.new name: params[:name], email: params[:email]
  user.save
  redirect "/"
end
