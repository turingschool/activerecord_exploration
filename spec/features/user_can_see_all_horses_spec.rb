require_relative '../spec_helper'

RSpec.describe "When a user visits '/horses/index'" do
  it "they can see all the horses" do

    Breed.create!(name:"breed")
    Jockey.create!(name:"fred")

    Horse.create!(name: "Penelope", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1)
    Horse.create!(name: "Penny", age: 39, total_winnings: 500, breed_id: 1, jockey_id: 1)
    Horse.create!(name: "Paulo", age: 45, total_winnings: 45000, breed_id: 1, jockey_id: 1)
    Horse.create!(name: "Pepe", age: 39, total_winnings: 1000000, breed_id: 1, jockey_id: 1)
    Horse.create!(name: "Pete", age: 55, total_winnings: 4000, breed_id: 1, jockey_id: 1)

    visit("/horses")
    save_and_open_page
    page.assert_selector('.horse', :count=>5)
    expect(page).to have_content("Penelope")
    expect(page).to have_content("Penny")
    expect(page).to have_content("Paulo")
    expect(page).to have_content("Pepe")
    expect(page).to have_content("Pete")
  end
end
