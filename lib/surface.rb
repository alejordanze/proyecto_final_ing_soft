require './lib/car'

class Surface
    @columns
    @rows   
    @cordx
    @cordy
    @car 
    def initialize()
        @columns = 0
        @rows = 0
        @cordx = 0
        @cordy = 0
        @car = Car.new
    end

    def set_surface(x,y)
        @columns = x
        @rows = y
    end

    def set_car(car)
        @car = car
    end

    def get_columns()
        @columns
    end

    def get_rows()
        @rows
    end

    def get_car()
        @car
    end
end
