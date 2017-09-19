require_relative '../../my_app.rb'
require 'rack/test'
require 'rspec'
require 'json'

describe 'user profile' do
  include Rack::Test::Methods
  def app
    MyApp
  end
  it 'displays the user id and name on the profile page' do
    get '/user/1'
    expect(JSON.parse(last_response.body)).to eq(
      'id' => 1,
      'forename' => 'john',
      'surname' => 'smith'
    )
  end
end
