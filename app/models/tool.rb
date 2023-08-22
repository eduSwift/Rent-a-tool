class Tool < ApplicationRecord
  belongs_to :user
  CATEGORY = %w(professional beginners)
  SIZE = %w(small heavy voluminous)
  validates :category, inclusion: { in: CATEGORY }
  validates :size, inclusion: {in: SIZE }
  validates :name,:description, :image, :category, :size, presence: true
end
