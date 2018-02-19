require "test/unit"
require_relative "Dessert.rb"

class Desert_Tes < Test::Unit::TestCase
  def test_getter
    des = Dessert.new("Pudding", 250)
    des.name="Eclair"
    des.colories=330
    mas = [des.name, des.colories]
    assert_equal ["Eclair", 330], mas
  end

  def test_healthy
    des = Dessert.new("Pudding", 250)
    des.colories=150
    assert_equal true, des.healthy?
  end
end