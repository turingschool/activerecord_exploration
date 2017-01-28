require_relative '../spec_helper'

RSpec.describe "When a user visits new horse path" do

  it "they can create new horse" do

    Breed.create(name: "Palomino")
    Jockey.create(name: "Joey")

    visit('/horses/new')

    fill_in 'horse[name]', with: "Casey"
    fill_in 'horse[age]', with: 26
    fill_in 'horse[total_winnings]', with: 45
    select "Palomino", from: "horse[breed_id]"
    select "Joey", from: "horse[jockey_id]"

    click_on 'Create New Horse'

    horse = Horse.last
    expect(horse.name).to eq("Casey")
    expect(page).to have_content("Casey")
    expect(current_path).to eq("/horses/#{horse.id}")
  end
end
