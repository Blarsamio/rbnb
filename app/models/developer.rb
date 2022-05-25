class Developer < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :description, :first_name, :last_name, :address, :image, presence: true
end
