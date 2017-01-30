require_relative '../spec_helper'

describe "when a user visits horses page" do
  it 'they can see all horse information' do
    Horse.create!(name: "Penelope", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1)
    Horse.create!(name: "Frank", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1)

    visit('/horses')

    expect(page).to have_content("Frank")
    expect(page).to have_content("Penelope")

  end

  it "they can link to additional horse information" do
    Horse.create!(name: "Frank", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1)

    visit('/horses')

    click_on("Additional Info")

    expect(current_path).to eql('/horses/1')
  end

  it "they can delete a horse" do
    Horse.create!(name: "Frank", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1)

    visit('/horses')

    click_on("Delete")

    expect(page).not_to have_content("Frank")
  end

end
