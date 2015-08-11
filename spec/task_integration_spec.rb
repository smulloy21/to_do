require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the to do path', {:type => :feature}) do
  it('what is does') do
    visit('/')
    fill_in('description', :with => "pick up ice cream")
    click_button("Add Task")
    # visit('/tasks')
    click_link("Back")
    expect(page).to have_content("pick up ice cream")
  end
end
