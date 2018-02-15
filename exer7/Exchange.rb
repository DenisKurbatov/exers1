class Numeric
    @@rate = {euros:43.61, euro:43.61, dollars:32.26, dollar:32.26, rubles:1, ruble:1}
    def method_missing (met)
      currency = met.to_sym
      if @@rate.key?(currency)
        self * @@rate[currency]
      end
    end

    def in(currency_sym)
        if @@rate.key?(currency_sym)
            self / @@rate[currency_sym]
        end
    end
end