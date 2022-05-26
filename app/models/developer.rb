class Developer < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :description, :first_name, :last_name, :address, :photo, presence: true
end
