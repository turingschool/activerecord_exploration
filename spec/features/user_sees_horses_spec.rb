require "./spec/spec_helper"

RSpec.describe "all horses on 'horses/' (index.erb)" do
  before {
    Jockey.create!(name: "Jockey")
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
  it "they see all available horses" do
    visit('/horses')
    expect(page).to have_content("Capy")
    expect(page).to have_content("Capy 2")
    expect(page).to have_content("Capy 3")
  end
end
