require "faker"

# p Faker::Name.name      #=> "Christophe Bartell"

# p Faker::Internet.email #=> "kirsten.greenholt@corkeryfisher.info"

animal = Faker::Creature::Animal.name #=> "Antelope"
p animal.upcase
