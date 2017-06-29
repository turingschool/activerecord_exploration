class Horse < ActiveRecord::Base
  belongs_to :jockey
  validates :name, presence: true
end
