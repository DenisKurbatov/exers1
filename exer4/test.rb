require "test/unit"
require_relative 'anagrams.rb'

class AnagramsTest < Test::Unit::TestCase
    def test_One
      assert_equal [["cars", "racs", "scar"], ["for"], ["potatoes"], ["four"], ["creams", "scream"]], combine_anagrams(["cars", "for", "potatoes", "racs", "four", "scar", "creams", "scream"])
    end

end
