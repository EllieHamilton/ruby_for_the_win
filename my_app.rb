require 'sinatra/base'

# Our simple app
class MyApp < Sinatra::Base
  get '/' do
  	'text'
  end
end
