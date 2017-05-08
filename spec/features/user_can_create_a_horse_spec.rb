require_relative '../spec_helper'

RSpec.describe "When a user visits '/horses/new'" do
  it "they can create a new horse" do

    Breed.create!(name:"breed")
    Jockey.create!(name:"fred")

    visit("/horses/new")
    fill_in("horse[name]", with: "Rhonda")
    fill_in("horse[total_winnings]", with: 17000)
    select('breed', :from => 'horse[breed_id]')
    select('fred', :from => 'horse[jockey_id]')
    click_on("Create New Horse")
    expect(current_path).to eq('/horses/1')
    save_and_open_page
    expect(page).to have_content("Rhonda")
    expect(page).to have_content("breed")
    expect(page).to have_content("fred")

  end
end
