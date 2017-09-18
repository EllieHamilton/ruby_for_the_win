require 'sinatra/base'

# Our simple app
class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end
end
