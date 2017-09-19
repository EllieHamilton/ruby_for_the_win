require 'sinatra/base'
require_relative 'models/user.rb'
require 'sinatra/activerecord'
# Our simple app
class MyApp < Sinatra::Base
  configure :production, :development, :test do
    enable :logging
    set :database_file, 'config/database.yml'
  end

  get '/' do
    logger.info 'route to index'
    @users = User.all
    erb :index
  end

  get '/user/:id' do
    @user = User.find(params[:id])
    erb :profile
  end
  # tests

  get '/ping' do
    'pong'
  end
end
