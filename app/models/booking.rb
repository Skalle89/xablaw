class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :computers
  validates :start_date, :end_time, presence: true
end
