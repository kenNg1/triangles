require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangles app path', {:type => :feature}) do
  it('processes the user entries and returns if triangle') do
    visit('/')
    fill_in('side0', :with => '3')
    fill_in('side1', :with => '3')
    fill_in('side2', :with => '3')
    click_button('Send')
    expect(page).to have_content("This is an equilateral triangle")
  end
end
