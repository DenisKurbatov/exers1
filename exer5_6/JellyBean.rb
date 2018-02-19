require_relative "Dessert"
class JellyBean < Dessert
    attr_accessor :flavor
    def initialize(name, colories, flavor)
        @name = name
        @colories = colories
        @flavor=flavor
    end
    def delicious?
        !@flavor.eql?("black licorice")
    end
end