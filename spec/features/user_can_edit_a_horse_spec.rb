require './spec/spec_helper'

RSpec.describe "when a user edits a horse" do
  before do
    breed1 = Breed.create(name: "Palomino")
    jockey1 = Jockey.create(name: "Jim")
    Horse.create(
                name: "Penelope",
                age: 29,
                total_winnings: 34000,
                breed_id: 1,
                jockey_id: 1
    )
  end

  it "can edit the horse" do
    visit('/horses/1/edit')

    expect(page).to have_content("Create a New Horse")
    fill_in("horse[name]", with: "Toby")
    fill_in("horse[total_winnings]", with: "30000")
    # select "Joe", :from => "horse[jockey_id]"
    # select "Clydesdale", :from => "horse[breed_id]"

    click_button("Update Horse")

    expect(page).to have_content("Toby")
    expect(page).to have_content("Info")
    # expect(page).to have_content("Breed: Clydesdale")
    # expect(page).to have_content("Jockey: Joe")
    expect(page).to have_content("Total Winnings: 30000")
    expect(page).to have_current_path('/horses/1')
  end
end
