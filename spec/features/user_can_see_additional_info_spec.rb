require './spec/spec_helper'

RSpec.describe "When a user visits the Additional Info page" do
  before do
    breed1 = Breed.create(name: "Palomino")
    jockey1 = Jockey.create(name: "Gary")
    Horse.create!(
                name: "Toby",
                age: 29,
                total_winnings: 5,
                breed_id: 2,
                jockey_id: 3
    )
    visit('/horses/1')
  end

  it "they see additional information for one horse" do

    expect(page).to have_content("Toby")
    expect(page).to have_content("Palomino")
    expect(page).to have_content("Gary")
    expect(page).to have_content(5)
  end
end
