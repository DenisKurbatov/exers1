require "test/unit"
require_relative "CartesianProduct.rb"

class CartesianProduct_test < Test::Unit::TestCase
    def test_01_cartesian
        c = CartesianProduct.new([1, 2, 5], [2, "4", 9])
        assert_equal [[1,2],[1,"4"],[1,9],[2,2],[2,"4"],[2,9],[5,2],[5,"4"],[5,9]], c.cartesian
    end
    
    def test_02_each
        c = CartesianProduct.new([1,2],[3,5])
        c.each{|x| x.reverse!}
        assert_equal [[3,1], [5,1], [3,2], [5,2]], c.cartesian
    end
end