require('minitest/autorun')
require('minitest/rg')
require_relative('Car')
require_relative('Person')

class TestCar < Minitest::Test

  def setup
    driver = Person.new('Adam', 26)
    @car = Car.new('blue', 'Ferrari', 100, 0, driver)
    passenger1 = Person.new('Bert', 23)
    passenger2 = Person.new('Ernie', 22)
  end

  def test_new_car
    assert_equal(0, @car.speed)
    assert_equal(100, @car.fuel)
  end

  def test_accelerate()
    @car.accelerate()
    assert_equal(10, @car.speed)
    assert_equal(95, @car.fuel)
  end

  def test_person()
    assert_equal('Adam', @car.driver.name)
  end

  def test_pick_up
    passenger1 = Person.new('Bert', 23)
    passenger2 = Person.new('Ernie', 22)
    @car.pick_up(passenger1)
    @car.pick_up(passenger2)
    assert_equal(2, @car.passengers)
  end

end