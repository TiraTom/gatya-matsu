class Activity < ApplicationRecord
  has_many :users, through: :activity_status

  validates :activity_name, presence: true
  validates :activity_price, presence: true
end
