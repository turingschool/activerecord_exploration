require_relative '../spec_helper'

RSpec.describe Horse do
  describe ".total_winnings" do
    it "returns total winnings for all horses" do
      Horse.create(name: "Phil", age: 22, total_winnings: 3)
      Horse.create(name: "Penelope", age: 24, total_winnings: 4)
      expect(Horse.total_winnings).to eq(7)
    end
  end

  describe 'validations' do
    it "is invalid without a name" do
      horse = Horse.new(age: 22, total_winnings: 14)

      expect(horse).to_not be_valid
    end
  end

  describe ".average_winnings" do
    it "returns average winnings for all horses" do
      Horse.create(name: "Paulie", age: 57, total_winnings: 8)
      Horse.create(name: "Peaches", age: 3, total_winnings: 10)

      expect(Horse.average_winnings).to eq(9)
    end
  end

  # describe ".total_winnings" do
  #   it "returns total winnings when two jockeys exist" do
  #     michael = Jockey.create(name: "Michael")
  #
  #     michael.
  #
  #   end
  # end

end

# could also do:
# expected = Horse.total_winnings
# expect(expected).to eq(7)
