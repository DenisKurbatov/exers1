require "test/unit"
require_relative "Dessert.rb"

class Desert_Tes < Test::Unit::TestCase
  def test_getter
    des = Dessert.new("Pudding", 250)
    des.set_name="Eclair"
    des.set_colories=330
    mas = [des.get_name, des.get_colories]
    assert_equal ["Eclair", 330], mas
  end

  def test_healthy
    des = Dessert.new("Pudding", 250)
    des.set_colories=150
    assert_equal true, des.healthy?
  end
end