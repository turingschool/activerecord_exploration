require_relative '../spec_helper'

RSpec.describe "When a user visits '/jockey/1'" do
  it "they can create a new horse" do

    Breed.create!(name:"breed")
    Jockey.create!(name:"fred")
    Horse.create!(name: "Penelope", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1)
    Horse.create!(name: "Arnie", age: 30, total_winnings: 20000, breed_id: 1, jockey_id: 1)


    visit("/jockeys")
    click_on("Additional Info")
    expect(current_path).to eq('/jockeys/1')
    save_and_open_page
    expect(page).to have_content("Total Winnings")
    expect(page).to have_content("54000")

  end
end
