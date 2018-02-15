class CartesianProduct
    attr_accessor:cartesian
    def initialize(arr1, arr2)
        @cartesian = Array.new
        arr1.each {|x| arr2.each{|y| cartesian<<[x,y]}}
    end
    def each(&block)
        @cartesian.each{|x| block.call(x)}
    end
end


