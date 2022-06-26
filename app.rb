require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'foo.sqlite3' }

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

get '/' do
  @b = Barber.all
  @b = @b.as_json
  @b = @b.map do |row|
    "<p>#{row['name']}</p>"
  end

  erb "<div>#{@b.join}</div>"
end
