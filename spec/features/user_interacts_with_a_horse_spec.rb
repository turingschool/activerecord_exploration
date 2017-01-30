require_relative '../spec_helper.rb'

describe "when a user visits a horse page" do
  it "they see an individual horses information" do
    Horse.create!(name: "Frank", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1)

    visit('/horses/1')

    expect(page).to have_content("Frank")
  end

  it "they can link to update the horse" do
    Horse.create!(name: "Frank", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1)

    visit('/horses/1')
    click_on("Edit")

    expect(current_path).to eql('/horses/1/edit')
  end

  it "they can delete the horse" do
    Horse.create!(name: "Frank", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1)

    visit('/horses/1')
    click_on("Delete")

    expect(current_path).to eql('/horses')
    expect(page).not_to have_content("Frank")
  end
end
