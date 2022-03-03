class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :computer_id
end
