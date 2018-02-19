require "test/unit"
require_relative "JellyBean.rb"

class JellyBean_Test < Test::Unit::TestCase
  def test_01_delicious
    des = JellyBean.new("Pudding", 250, "white licories")
    des.flavor="black licorice"
    assert_equal false, des.delicious?
  end

  
end