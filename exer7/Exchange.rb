class Numeric
    Rate = {euro:43.61, dollar:32.26, ruble:1}
    def method_missing (met)    
        currency = met.to_s.delete('s').to_sym
        p currency
        if Rate.key?(currency)
            self * Rate[currency]
        end
    end

    def in(currency_sym)
        currency_sym = currency_sym.to_s.delete('s').to_sym
        if Rate.key?(currency_sym)
            self / Rate[currency_sym]
        end
    end
end