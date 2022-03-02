class Computer < ApplicationRecord
  belongs_to :users
  validaates :processador, :ram, :placa_de_video, :price_day, presence: true
end
