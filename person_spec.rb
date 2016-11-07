require('minitest/autorun')
require('minitest/rg')
require_relative('Person')

class TestPerson < Minitest::Test

  def setup
    @person = Person.new('Adam', 26)
  end

  def test_new_person
    assert_equal('Adam', @person.name)
    assert_equal(26, @person.age)
  end
end