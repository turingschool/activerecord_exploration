require './spec/spec_helper'

RSpec.describe "When a user visits homepage" do
  it "sees a welcome message" do 
    # As a user -> capybara is user
    # When I visit the root page
    visit('/')
    # I should see a welcome message
    save_and_open_page
    expect(page).to have_content("Welcome") 
  end
end