class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool
  validates :start_date, presence: true, comparison: { greater_than_or_equal_to: Date.today}

  validates :end_date, presence: true, comparison: { greater_than: :start_date}

  enum status: [ :pending, :rejected, :accepted ]

  private

  # def  start_date_after_today
  #   if Date.today.strftime("%Y-%m-%d") <= :start_date
  #     errors.add(:start_date, "must be after today")
  #   end
  # end
end
