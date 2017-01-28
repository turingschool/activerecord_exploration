require_relative '../spec_helper'

RSpec.describe "when user visits horses path" do
  it "they view all horses" do
    Jockey.create(name: "Joey")
    Breed.create(name: "Palomino")

    horse1 =  Horse.create(name: "Penelope", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1)
    horse2 =  Horse.create(name: "Pepe", age: 39, total_winnings: 1000000, breed_id: 1, jockey_id: 1)
    horse3 = Horse.create(name: "Picasso", age: 15, total_winnings: 78000, breed_id: 1, jockey_id: 1)

    visit('/horses')

    expect(page).to have_content(horse1.name)
    expect(page).to have_content(horse3.total_winnings)
    expect(page).to have_content(horse1.jockey.name)
    expect(page).to have_content(horse3.breed.name)
  end
end
