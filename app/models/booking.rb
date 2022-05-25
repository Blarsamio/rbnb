class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :developer, dependence: :destroy

  validates :job, presence: true
end
