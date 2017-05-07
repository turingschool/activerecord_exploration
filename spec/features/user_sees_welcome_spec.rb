require './spec/spec_helper'

RSpec.describe "When a user visits the home page" do
  before do
    visit('/')
  end
  it "they can view the welcome message" do
    expect(page).to have_content("Welcome to Horses of Turing")
  end

  it "they can choose to view horses" do
    click_link('View Horses')
  end

  it "they can choose to view jockeys" do
    click_link('View Jockeys')
  end
end
