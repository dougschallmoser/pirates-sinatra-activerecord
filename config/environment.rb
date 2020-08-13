require 'bundler'
Bundler.require

# require 'sinatra/base'
# require 'sinatra/activerecord'

require_all './app'

set :database, {adapter: "sqlite3", database: "db/database.sqlite3"}