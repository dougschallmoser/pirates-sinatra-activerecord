require 'bundler'
Bundler.require

require 'sinatra/base'
require 'sinatra/activerecord'

require_all './app'

# require './app/models/pirate.rb'
# require './app/models/ship.rb'

set :database, {adapter: "sqlite3", database: "db/database.sqlite3"}