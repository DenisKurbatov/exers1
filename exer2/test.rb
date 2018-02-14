require "test/unit"
require_relative "count_words.rb"

class Count_words_Test < Test::Unit::TestCase
  def test_str1
    hash = {"a" => 3, "man" => 1, "canal" => 1, "panama" => 1, "plan" => 1}
    assert_equal hash, count_words("A man, a plan a canal -- Panama")
  end

  def test_str2
    hash = {"doo" => 3, "bee" => 2}
    assert_equal hash, count_words("Doo bee doo bee doo")
  end
end
