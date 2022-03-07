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
images = ['https://images.kabum.com.br/produtos/fotos/158045/computador-gamer-pcmix-intel-core-i3-9100-16gb-ddr4-ssd-480gb-linux-cpu-l3100_1622580607_g.jpg',
          'https://s2.glbimg.com/eQF6zOgS3xiHCEIVDQOGj9ldXSE=/0x0:6720x4480/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2021/a/H/yjEAjIRHukWhYgOVHAQg/nave11.jpg',
          'https://images.kabum.com.br/produtos/fotos/271867/pc-gamer-concordia-amd-ryzen-5-3400g-rgb-8gb-ddr4-ssd-240gb-rgb-linux-preto-31724_1637670854_gg.jpg',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuzo2SBrmlLSlltpiFrU1dMbiESj80XF5Y1g&usqp=CAU',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl3uRtjyn1nIDFFGBMeFgCKesp0NNAcTIUQAwYWd3uKbnUMjUnSjbADllhXP74A0I0dsY&usqp=CAU']

require 'open-uri'

# images = [File.read('../assets/images/computer_1.jpeg')]

10.times do
  puts "I will create now"
  puts "creating..."
  computer = Computer.new(processador: processadores.sample, ram: rams.sample, placa_de_video: placas.sample,
                          price_day: ["20", "25", "30", "35"].sample, user_id: 1)
  computer.photo.attach(io: URI.open(images.sample), filename: 'pc-image', content_type: 'image/jpeg')
  computer.save
  puts "done!"
  p computer
end
