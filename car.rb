class Car
  attr_reader :fuel, :speed, :driver, :passengers
  def initialize(colour, model, fuel, speed, driver)
    @colour = colour
    @model = model
    @fuel = fuel
    @speed = speed
    @driver = driver
    @passengers = []
  end

  def accelerate()
    @speed += 10
    @fuel -= 5
  end

  def pick_up(x)
    @passengers.push(x)
  end

  def passengers()
    @passengers.length
  end

end