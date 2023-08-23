class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool
  validates :start_date, presence: true
  validates :end_date, presence: true, comparison: { greater_than: :start_date}
  validate :start_date_after_today
  enum status: [ :pending, :rejected, :accepted ]

  private

  def  start_date_after_today
    if start_date <= Date.today
      errors.add(:start_date, "must be after today")
    end
  end
end
