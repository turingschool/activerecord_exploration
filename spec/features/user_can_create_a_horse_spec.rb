require "./spec/spec_helper"

RSpec.describe "creating a horse" do
  before {
    Jockey.create!(name: "Jockey")
    Breed.create!(name: "Breed")
    visit('/horses/new')
  }
  context "as a user" do
    it "they can see the header" do
      expect(page).to have_content("Create a New Horse")
    end

    it "they can create a horse with all data" do
      within('form') do
        fill_in("horse[name]", with: "Capy")
        fill_in("horse[total_winnings]", with: 25)
        select('Jockey', :from => 'horse[jockey_id]')
        select('Breed', :from => 'horse[breed_id]')
        click_button('Create New Horse')
        expect(current_path).to eq('/horses/1')
      end
    end
  end
end
