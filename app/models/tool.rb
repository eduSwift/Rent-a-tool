class Tool < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  CATEGORY = %w(professional beginners)
  SIZE = %w(small heavy voluminous)
  validates :category, inclusion: { in: CATEGORY }
  validates :size, inclusion: {in: SIZE }
  validates :name, :description, :image, :category, :size, presence: true

  pg_search_scope :search_by_name,
                  against: [:name],
                  using: {
                    tsearch: { prefix: true }
                  }
end
