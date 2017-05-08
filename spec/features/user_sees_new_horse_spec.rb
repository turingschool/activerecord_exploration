require './spec/spec_helper'

RSpec.describe "When a user creates a new horse" do
  it "sees the new horse on a new page" do
    visit('horses/new')
    # And I fill in name and total winnings
    fill_in("horse[name]", with: "Sun Shines Brightly")
    # And I click the "Create New Horse" button
    click_button("Create New Horse")
    # Then I should see the new horse on a new page
    save_and_open_page
    expect(page).to have_content("Sun Shines Brightly")
  end
end
