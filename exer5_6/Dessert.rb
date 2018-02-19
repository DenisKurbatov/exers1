class Dessert

    attr_accessor :name, :colories
    def initialize (name, colories)
        @name = name
        @colories = colories
    end

    def healthy?
        @colories<200
    end
    def delicious?
        true
    end

end