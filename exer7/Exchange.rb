class Numeric
    Rate = {euro:43.61, dollar:32.26, ruble:1}
    
    def euro 
        self*Rate[:euro]
    end
    def dollar
        self*Rate[:dollar]
    end
    def ruble
        self
    end
    alias :euros :euro
    alias :dollars :dollar 
    alias :rubles :ruble 

    def in(currency_sym)
        currency_sym = currency_sym.to_s.delete('s').to_sym
        if Rate.key?(currency_sym)
            self / Rate[currency_sym]
        end
    end
end