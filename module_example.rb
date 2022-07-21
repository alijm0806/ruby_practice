module Command
  def
    speed = 0
  end
  def  
    direction = "north"
  end
  def  
    brake
  end
  def
    accelerate = 0
  end
  def turn(new_direction)
    @direction = new_direction
  end
  end  
end
class Car
  include Command
  def initialize
    @speed = 0
    @direction = 'north'
  end
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Command
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.newcar.brake