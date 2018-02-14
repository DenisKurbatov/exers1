class Dessert

    def initialize (name, colories)
        @name = name
        @colories = colories
    end
    def get_name
        @name
    end
    def get_colories
        @colories
    end
    def set_name= (name)
        @name = name
    end
    def set_colories= (colories)
        @colories = colories
    end

    def healthy?
        @colories<200
    end
    def delicious?
        true
    end

end