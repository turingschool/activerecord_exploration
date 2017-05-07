require_relative '../spec_helper'

RSpec.describe "When a user visits homepage" do
  it "they see a welcome message" do
    visit("/")

    expect(page).to have_content("Horses of Turing")

    within('a[href="/horses"]') do
      expect(page).to have_content("View Horses")
    end

    within('a[href="/jockeys"]') do
      expect(page).to have_content("View Jockeys")
    end

  end
end
