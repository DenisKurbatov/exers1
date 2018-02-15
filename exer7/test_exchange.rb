require "test/unit"
require_relative "Exchange.rb"

class Exchange_test < Test::Unit::TestCase
    
    def test_01_euros_in_dollars
        assert_equal 10.euros.in(:dollars), 10*43.61/32.26
    end
    def test_02_euros_in_rubles
        assert_equal 10.euros.in(:rubles), 10*43.61
    end
    def test_03_dollar_in_euro
        assert_equal 10.dollar.in(:euro), 10*32.26/43.61
    end
    def test_04_dollar_in_ruble
        assert_equal 10.dollar.in(:ruble), 10*32.26
    end
    def test_05_rubles_in_dollar
        assert_equal 10.rubles.in(:dollar), 10/32.26
    end
    def test_06_ruble_in_euros
        assert_equal 10.ruble.in(:euros), 10/43.61
    end
    
end
