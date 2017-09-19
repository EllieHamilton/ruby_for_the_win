require 'capybara'
require 'capybara/rspec'

describe 'user index' do
  it 'displays an unordered list of users\' full names' do
    visit '/'
    expect(page).to have_content 'john smith'
  end
end
