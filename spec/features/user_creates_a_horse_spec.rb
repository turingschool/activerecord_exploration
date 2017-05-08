require './spec/spec_helper'

RSpec.describe "User wants to create new horse" do

  it "visits create horse page", :load => true do
    visit("/horses/new")

    expect(page).to have_content("Create a New Horse")
    expect(page).to have_content("Name:")
    expect(page).to have_content("Total Winnings:")
    expect(page).to have_content("Jockey:")
  end

  it "enters data into form", :load => true  do
    visit "/horses/new"
    fill_in "horse[name]", with: 'Fluppydo'
    fill_in "horse[total_winnings]", with: 10000

    select "Jim", from: "horse[jockey_id]"
    select "Palomino", from: "horse[breed_id]"

    click_button "Create New Horse"
    visit "/horses"

    expect(page).to have_content("Fluppydo")
    expect(page).to have_content(10000)

  end

end