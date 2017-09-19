require 'capybara'
require 'capybara/rspec'

describe 'user index' do
  it 'displays an unordered list of users\' full names' do
    visit '/'
    expect(page).to have_content 'john smith'
  end

  it 'links to the user profile page' do
    visit '/'
    expect(page).to have_link("john smith", href: "/user/1")
  end
end
