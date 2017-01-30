require_relative '../spec_helper'

describe "When a user visits root" do
  it "they see a greeting" do
    visit('/')

    within('#greeting') do
      expect(page).to have_content("Welcome")
    end
  end

  it "they can link to all horses" do
    visit('/')

    click_on "View Horses" do
      expect(current_path).to eql('/horses')
    end
  end

  it "they can link to all jockeys" do
    visit('/')

    click_on "View Jockeys" do
      expect(current_path).to eql('/jockeys')
    end
  end

end
