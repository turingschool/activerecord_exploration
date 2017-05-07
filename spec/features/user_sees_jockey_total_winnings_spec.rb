require "./spec/spec_helper"

RSpec.describe "viewing jockey's winnings on '/jockeys/:id' (jockeys/show.erb)" do
  before {
    Jockey.create!(name: "Jockey Name")
    Breed.create!(name: "Breed")
    Horse.create!(
                  name: "Capy",
                  total_winnings: 25,
                  jockey_id: 1,
                  breed_id: 1
    )
    Horse.create!(
                  name: "Capy 2",
                  total_winnings: 25,
                  jockey_id: 1,
                  breed_id: 1
    )
    Horse.create!(
                  name: "Capy 3",
                  total_winnings: 25,
                  jockey_id: 1,
                  breed_id: 1
    )
  }
  it "user sees the sum of the Jockey's horses winnings" do
    visit('/jockeys/1')
    expect(page).to have_content("Jockey Name")
    expect(page).to have_content("Total Winnings: 75")
  end
end
