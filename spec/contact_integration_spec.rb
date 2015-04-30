require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('address_book path', {:type => :feature}) do
  it("shows the address book with links") do
    visit('/')
    expect(page).to have_content("Here is")
  end
end
