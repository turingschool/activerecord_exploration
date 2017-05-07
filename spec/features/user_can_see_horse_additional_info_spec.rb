require './spec/spec_helper'

RSpec.describe "When a user visits the horse Additional Info page" do
  before do
    Horse.create(
                name: "Penelope",
                age: 29,
                total_winnings: 34000,
                breed_id: 1,
                jockey_id: 1
    )
    breed1 = Breed.create(name: "Palomino")
    jockey1 = Jockey.create(name: "Jim")
    visit('/horses/1')
  end

  it "they see additional information for one horse" do
    expect(page).to have_content("Penelope")
    expect(page).to have_content("Palomino")
    expect(page).to have_content("Jim")
    expect(page).to have_content(34000)
  end
end
