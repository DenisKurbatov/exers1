require "test/unit"
require_relative "AttrWithHistory.rb"

class AttrWithHistory_test < Test::Unit::TestCase
    
    def test_01_symbol
        f = Foo.new
        f.bar=2
        f.bar="NewBar"
        f.bar=12.6
        f.bar=nil
        f.bar=10
        assert_equal f.bar_history, [2,"NewBar",12.6, nil, 10]
    end
    def test_02_string
        f = Foo.new
        f.foo = 1
        f.foo = nil
        f.foo = 12
        f.foo = "s"
        assert_equal f.foo_history, [1, nil, 12, "s"]
    end

end