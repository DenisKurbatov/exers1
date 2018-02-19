class Class

    def attr_accessor_with_history(symb)
        symb = symb.to_s
        
        module_eval "def #{symb}; @#{symb};@#{symb}_history = Array.new; end"

        module_eval "def #{symb}=(val);@#{symb}_history.push(val); @#{symb}=(val); end"

        module_eval "def #{symb}_history; @#{symb}_history; end"
    end
end
class Foo
    attr_accessor_with_history :bar
    attr_accessor_with_history "foo"
    def initialize
        self.bar
        self.foo
    end
end
