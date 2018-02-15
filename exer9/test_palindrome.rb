require "test/unit"
require_relative "palindrome.rb"

class Pal_test < Test::Unit::TestCase
    def test_01_string
        assert_equal true, "A man, a plan a canal -- Panama".palindrome?
    end
    def test_02_string
        assert_equal false, "Abracadabra".palindrome?
    end
    def test_03_array
        assert_equal true, [1, 4, 7, 5, 7, 4, 1].palindrome?
    end
    def test_04_array
        assert_equal false, [1, 12, 1, 3].palindrome?
    end
end