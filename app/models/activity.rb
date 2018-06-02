class Activity < ApplicationRecord
  has_many :users, through: :activity_status
end
