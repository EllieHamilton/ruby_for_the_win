require_relative '../../my_app.rb'
require 'rack/test'
require 'rspec'

describe 'MyApp' do
  include Rack::Test::Methods

  def app
    MyApp
  end

  it 'has a valid route' do
    get '/'
    expect(last_response.status).to eq 200
  end
end
