require_relative '../spec_helper'

RSpec.describe "When a user visits '/'" do
  it "they see a welcome message" do
#     As a user
#     When I visit the root page
      visit('/')
#     Then I see a welcome message

      save_and_open_page
      expect(page).to have_content("Welcome")
  end
end
