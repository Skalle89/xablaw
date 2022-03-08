class Computer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :processador, :placa_de_video, :ram, :price_day, :photo, presence: true
end
