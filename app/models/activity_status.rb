class ActivityStatus < ApplicationRecord
  belongs_to :budget
  belongs_to :user

  validates :budget, presence: true

end
