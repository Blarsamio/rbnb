class Developer < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :description, :first_name, :last_name, :address, presence: true
end
