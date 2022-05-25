class Developer < ApplicationRecord
  belongs_to :user

  validates :description, :first_name, :last_name, :address, :image, presence: true
end
