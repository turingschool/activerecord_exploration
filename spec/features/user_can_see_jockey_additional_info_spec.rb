require './spec/spec_helper'

RSpec.describe "When a user visits the jockey Additional Info page" do
  before do
    Horse.create(
                name: "Paige",
                age: 20,
                total_winnings: 78000,
                breed_id: 3,
                jockey_id: 1
    )
    breed1 = Breed.create(name: "Percheron")
    jockey1 = Jockey.create(name: "Jim")
    visit('/jockeys/1')
  end

  it "they see additional information for one jockey" do
    expect(page).to have_content("Jockey: Jim")
    expect(page).to have_content("Name")
    expect(page).to have_content("Breed")
    expect(page).to have_content("Total Winnings")
    expect(page).to have_content("Paige")
    expect(page).to have_content("Percheron")
    expect(page).to have_content(78000)
    expect(page).to have_content("Stats")
    expect(page).to have_content("Total Winnings: 78000")
    expect(page).to have_content("Average Winnings: 78000")
  end
end
