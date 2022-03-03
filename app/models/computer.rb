class Computer < ApplicationRecord
  belongs_to :users
  validates :processador, :placa_de_video, :ram, :price_day, presence: true
end
