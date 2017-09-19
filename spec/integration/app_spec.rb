ENV['RACK_ENV'] = 'test'

require_relative '../../my_app.rb'
require 'rack/test'
require 'rspec'

describe 'MyApp' do
  include Rack::Test::Methods
  user = User.new(id: 1, forename: 'john', surname: 'smith')

  def app
    MyApp
  end

  it 'has a valid route to users' do
    get '/users'
    expect(last_response.status).to eq 200
  end

  it 'has a valid route to profile' do
    get '/user/' + user.id.to_s
    expect(last_response.status).to eq 200
  end
end

describe 'health check' do
  include Rack::Test::Methods

  def app
    MyApp
  end

  it 'has a valid route' do
    get '/ping'
    expect(last_response.status).to eq 200
  end

  it 'returns pong' do
    get '/ping'
    expect(last_response.body).to eq 'pong'
  end
end
