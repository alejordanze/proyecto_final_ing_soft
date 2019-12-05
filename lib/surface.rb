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

    def setSurface(x,y)
        @columns = x
        @rows = y
    end

    def setCar(car)
        @car = car
    end

    def getSurface()
        return @columns + 'x' + @rows
    end

    def getColumns()
        @columns
    end

    def getRows()
        @rows
    end


    def getCar()
        @car
    end
end
