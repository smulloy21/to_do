require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the to do path', {:type => :feature}) do
  it('what is does') do
    visit('/')
    fill_in('new_task', :with => "pick up ice cream")
    click_button("Add Task")
    expect(page).to have_content("Your new task has been succesfully added!")
  end
end
