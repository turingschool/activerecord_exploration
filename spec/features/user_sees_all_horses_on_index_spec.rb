require './spec/spec_helper'

RSpec.describe "When a user navigates to horses index page" do
  it "sees all the horses" do
    visit('/horses')    
    # Then I should see all the horses on the page
    save_and_open_page
    expect(page).to have_content("Penelope")
    expect(page).to have_content("Penelope")
    expect(page).to have_content("Paulo")
    expect(page).to have_content("Pepe")
    expect(page).to have_content("Pete")
    expect(page).to have_content("Pete")
    expect(page).to have_content("Paige")
    expect(page).to have_content("Peyton")
    expect(page).to have_content("Patricia")
    expect(page).to have_content("Patricia")
    expect(page).to have_content("Picasso")
  end
end