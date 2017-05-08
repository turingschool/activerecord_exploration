require './spec/spec_helper'

RSpec.describe "When a user visits homepage" do

  it "sees a welcome message" do
    visit('/')
    
    expect(page).to have_content("Welcome to Horses of Turing")
  end

end