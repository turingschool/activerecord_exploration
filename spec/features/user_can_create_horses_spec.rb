require './spec/spec_helper'

RSpec.describe "When a user visits create new horse page" do
  it "they can create a new horse" do
    jim = Jockey.create(name: "Jim")
    joe = Jockey.create(name: "Joe")
    jessie = Jockey.create(name: "Jessie")
    janet = Jockey.create(name: "Janet")
    jessica = Jockey.create(name: "Jessica")

    breed1 = Breed.create(name: "Palomino")
    breed2 = Breed.create(name: "Clydesdale")
    breed3 = Breed.create(name: "Percheron")
    breed4 = Breed.create(name: "Mustang")
    breed5 = Breed.create(name: "Trakehner")

    visit('horses/new')
    expect(page).to have_content("Create a New Horse")
    fill_in("horse[name]", with: "Penelope")
    fill_in("horse[total_winnings]", with: "34000")
    select "Jim", :from => "horse[jockey_id]"
    select "Palomino", :from => "horse[breed_id]"
    click_on "Create New Horse"
  end
end
