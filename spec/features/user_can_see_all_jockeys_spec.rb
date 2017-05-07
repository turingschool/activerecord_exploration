require './spec/spec_helper'

RSpec.describe "When a user visits the view all jockeys page" do
  before do
    visit('/jockeys')
  end

  it "they can view an index of all jockeys" do
    expect(page).to have_content("All Jockeys")
  end

  context "when jockeys are in the database" do
    before do
      breed1 = Breed.create(name: "Palomino")
      jockey1 = Jockey.create(name: "Jim")
      Horse.create(
                  name: "Penelope",
                  age: 29,
                  total_winnings: 34000,
                  breed_id: 1,
                  jockey_id: 1
      )
      visit('/jockeys')
    end
    it "the page lists the jockey's name" do
      expect(page).to have_content("Jim")
    end
    it "the page lists an Additional Info link" do
      click_on "Additional Info"
    end
  end
end
