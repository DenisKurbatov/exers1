class Class

    def attr_accessor_with_history(symb)
        symb = symb.to_s
       
        module_eval "def #{symb}; @#{symb}; end"

        module_eval "def #{symb}=(val); if @#{symb}_history; @#{symb}_history.push(val); else; 
        @#{symb}_history = Array.new; @#{symb}_history.push(val); end; @#{symb}=(val); end"

        module_eval "def #{symb}_history; @#{symb}_history; end"
    end
end
