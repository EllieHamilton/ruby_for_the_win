require 'sinatra/base'

# Our simple app
class MyApp < Sinatra::Base
  configure :production, :development do
    enable :logging
  end

  get '/' do
    logger.info 'route to index'
  end

  get '/ping' do
  	'pong'
  end
end
