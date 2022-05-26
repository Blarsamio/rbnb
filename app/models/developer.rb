class Developer < ApplicationRecord
  belongs_to :user

  validates :description, :first_name, :last_name, :address, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_language,
    against: %i[language],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
