# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('the triangles app path', {:type => :feature}) do
#   it('processes the user entries and returns if triangle and type') do
#     visit('/')
#     fill_in('side1', :with => 'hi hello hi hi hi hi!')
#     fill_in('side2', :with => 'hi hello hi hi hi hi!')
#     fill_in('form1', :with => 'hi hello hi hi hi hi!')
#     click_button('submit')
#     expect(page).to have_content(5)
#   end
# end
