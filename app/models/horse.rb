class Horse < ActiveRecord::Base
  belongs_to :jockey
  validates :name, presence: true

  def self.average_winnings
    average(:total_winnings).round
  end

  def self.total_winnings
    sum(:total_winnings)
  end

end
