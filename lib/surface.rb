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
        @cars = Array.new
    end

    def set_surface(x,y)
        @columns = x
        @rows = y
    end

    def set_car(car)
        @car = car
    end

    def set_cars(cars)
        @cars = cars
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

    def get_cars()
        @cars
    end
    
    def get_cars_length()
        @cars.length
    end
    def is_valid_dimensions?()
        @columns > 0 && @rows > 0
    end
end
