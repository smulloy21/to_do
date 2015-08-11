require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the to do path', {:type => :feature}) do
  it('adds a new task') do
    visit('/')
    fill_in('description', :with => "pick up ice cream")
    click_button("Add Task")
    click_link("Back")
    expect(page).to have_content("pick up ice cream")
  end
  it('clears all tasks') do
    visit('/')
    click_button("Clear Tasks")
    click_link("Back")
    expect(page).to have_content("To Do")
  end
end
