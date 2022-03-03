# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  puts "I will create now"
  puts "creating..."
  computer = Computer.new(processador: "i7", ram: "16gb", placa_de_video: "rtx 2060", price_day: 20, user_id: 1)
  computer.save
  puts "done!"
  p computer
end
