require "sinatra"
require "sinatra/activerecord"

set :database, {adapter: "sqlite3", database: "example.sqlite3"}
