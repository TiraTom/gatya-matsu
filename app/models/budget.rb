class Budget < ApplicationRecord
  belongs_to :user

  validates :target_year, presence: true
  
end
