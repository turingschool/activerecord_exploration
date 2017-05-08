require './spec/spec_helper'

RSpec.describe "When horse created by program" do
  it "they see it displayed on horses page" do
    Horse.create(name: "Penelope", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1)
    Jockey.create(name: "Josh")
    Breed.create(name: "Palomino")

    visit('/horses')
    save_and_open_page
    expect(page).to have_content("Penelope")
    expect(page).to have_content("Josh")
  end

  it "the user can create a horse and see it displayed on horses page" do
    visit('/horses/new')
    fill_in("Name:", with: "Quark")
    fill_in("Total Winnings:", with: 45000)
    fill_in("Jockey:", with: "Quark")
    fill_in("Name:", with: "Quark")
    expect(page).to have_content("Quark")
    expect(page).to have_content(45000)
    expect(page).to have_content("Josh")
  end
end