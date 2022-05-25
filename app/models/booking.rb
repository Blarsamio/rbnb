class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :developer

  validates :job, presence: true
end
