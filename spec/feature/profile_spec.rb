require 'capybara'
require 'capybara/rspec'

describe 'user profile' do
  user = User.new(id: 1, forename: 'john', surname: 'smith')

  it 'displays the user id and name on the profile page' do
    visit '/user/' + user.id.to_s
    expect(page).to have_content 1
    expect(page).to have_content 'john smith'
  end
end
