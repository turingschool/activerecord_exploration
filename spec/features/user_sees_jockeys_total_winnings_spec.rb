require_relative '../spec_helper'

RSpec.describe "when a user visits a jockey's page" do
  it "they can see the jockey's total winnings" do
    Breed.create(name: "Palomino")
    joe = Jockey.create(name: "Joe")

    joe.horses.create(name: "Megan", age: 5, total_winnings: 3, breed_id: 1)
    joe.horses.create(name: "Phil", age: 4, total_winnings: 5, breed_id: 1)
    joe.horses.create(name: "Flippy", age: 6, total_winnings: 4, breed_id: 1)
    joe.horses.create(name: "Muffin", age: 22, total_winnings: 1, breed_id: 1)

    visit("/jockeys/#{joe.id}")
    expect(page).to have_content(13)
  end
end
