require_relative '../../my_app.rb'
require 'rack/test'
require 'rspec'
require 'json'

describe 'user index' do
  include Rack::Test::Methods
  def app
    MyApp
  end
  it 'returns a list of users' do
    get '/users'
    expect(JSON.parse(last_response.body)[0]).to include(
      'id' => 1,
      'forename' => 'john',
      'surname' => 'smith'
    )
    expect(JSON.parse(last_response.body)[1]).to include(
      'id' => 2,
      'forename' => 'jane',
      'surname' => 'doe'
    )
  end
end
