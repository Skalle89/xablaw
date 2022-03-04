# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

processadores = ["Intel Core i9-12900K Processor", "Intel Core i7-12700K Processor", "AMD Ryzen 9 5950X", "Intel Core i5-12600K Processor", "AMD Ryzen 9 3900XT"]
rams = ["4GB", "8GB", "16GB"]
placas = ["Radeon RX 6900 XT", "GeForce RTX 3090", "GeForce RTX 3080 Ti", "Radeon RX 5500 XT 8GB", "Nvidia Titan RTX"]
10.times do
  puts "I will create now"
  puts "creating..."
  computer = Computer.new(processador: processadores.sample, ram: rams.sample, placa_de_video: placas.sample, price_day: ["20","25","30","35"].sample, user_id: 1)
  computer.save
  puts "done!"
  p computer
end
