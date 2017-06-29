class Horse < ActiveRecord::Base

  def self.total_winnings
    
    horses.average("total_winnings")
  end

end
