class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :computer
  validates :start_date, :end_time, presence: true
  validate :end_time_after_start_date

  private

  def end_time_after_start_date
    return if end_time.blank? || start_date.blank?

    if end_time < start_date
      errors.add(:end_time, "must be after the start date")
    end
 end
end
