require './spec/spec_helper'

RSpec.describe "When a user visits the view all horses page (horses/index.erb)" do
  before do
    visit('/horses')
  end

  it "they can view an index of all horses" do
    expect(page).to have_content("All Horses")
  end

  context "when horses are in the database" do
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
      visit('/horses')
    end
    it "the page lists the horse's name" do
      expect(page).to have_content("Penelope")
    end
    it "the page lists the horse's breed" do
      expect(page).to have_content("Palomino")
    end
    it "the page lists the horse's total winnings" do
      expect(page).to have_content(34000)
    end
    it "the page lists the horse's jockey's name" do
      expect(page).to have_content("Jim")
    end
    it "the page lists an Additional Info link" do
      click_on "Additional Info"
    end
    it "the page lists the horse's delete link" do
      expect(page).to have_selector("form")
    end
  end
end
