class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :computer
  validates :start_date, :end_time, presence: true
end
