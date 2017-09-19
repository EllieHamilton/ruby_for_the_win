require 'sinatra/base'
require_relative 'models/user.rb'
require 'sinatra/activerecord'
require 'json'
# Our simple app
class MyApp < Sinatra::Base
  configure :production, :development, :test do
    enable :logging
    set :database_file, 'config/database.yml'
  end

  get '/users' do
    logger.info 'route to index'
    users = User.all
    users.to_json
  end

  get '/user/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  get '/ping' do
    'pong'
  end
end
