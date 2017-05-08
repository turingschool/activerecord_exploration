require './spec/spec_helper'

RSpec.describe "When a user visits homepage" do
  it "they see a welcome message" do
    Jockey.create(name: "Penelope")
    visit('/')
    expect(page).to have_content("Welcome")
  end
end