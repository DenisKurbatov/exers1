require_relative "Dessert"
class JellyBean < Dessert
    attr_accessor :flavor
    def delicious?
        !@flavor.eql?("black licorice")
    end
end