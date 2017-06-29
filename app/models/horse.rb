class Horse < ActiveRecord::Base
  belongs_to :jockey

  def total_winnings_by_jockey
    sum(:total_winnings)
  end
end
