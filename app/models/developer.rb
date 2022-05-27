class Developer < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  
  validates :description, :first_name, :last_name, :address, :photo, presence: true
    include PgSearch::Model
    pg_search_scope :search_by_language,
    against: %i[language],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
