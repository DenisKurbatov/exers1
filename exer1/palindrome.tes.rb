require "test/unit"
require_relative 'palindrome.rb'

class PalindromeTest < Test::Unit::TestCase
    def test_str1
      assert_equal true, palindrome?("3.q.,,q.wee.9qe--eq.eewqq")
    end
    def test_str2
      assert_equal true, palindrome?("A man, a plan a canal -- Panama")
    end
    def test_str3
      assert_equal true, palindrome?("Madam, I`m Adam!")
    end
    def test_str4
      assert_equal false, palindrome?("Abracadabra")
    end

end
