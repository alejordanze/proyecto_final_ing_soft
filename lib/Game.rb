require './lib/surface'

class Game
    @@surface
    @final_cordx
    @final_cordy
    @cant_cars
    @errors
    def initialize(surface)
      @@surface = surface
      @final_cordx = 0
      @final_cordy = 0
      @cant_cars = 1
      @errors = []
    end

    def turn_left(car)
        if(isNorth?(car))
            car = setWest(car)
        elsif(isSouth?(car))
            car = setEast(car)
        elsif(isEast?(car))
            car = setNorth(car)
        elsif(isWest?(car))
            car = setSouth(car)
        else 
            car = error_car("La orientacion no es valida", car)
        end
        return car
    end

    def turn_right(car)
        if(isNorth?(car))
            car = setEast(car)
        elsif(isSouth?(car))
            car = setWest(car)
        elsif(isEast?(car))
            car = setSouth(car)
        elsif(isWest?(car))
            car = setNorth(car)
        else 
            car = error_car("La orientacion no es valida", car)
        end
        return car
    end

    def give_a_step_forward(car)
        if(isNorth?(car) || isSouth?(car))
            if(is_valid_moveY?(car))
                car.set_cordY_final(car.get_cordY_final()+car.get_orientation_final()[0])
            else
               car = error_car("Hubieron movimientos en el eje Y que salían de la superficie, los ignoramos y seguimos con la secuencia", car)
            end
        elsif(isEast?(car) || isWest?(car))
            if(is_valid_moveX?(car))
                car.set_cordX_final(car.get_cordX_final()+car.get_orientation_final()[0])
            else
               car = error_car("Hubieron movimientos en el eje X que salían de la superficie, los ignoramos y seguimos con la secuencia", car)
            end
        end
        return car
    end


    def error_car(str, car)
        if(!car.get_errors().include? str)
            car.add_error(str)
        end
        return car
    end

    def set_Surface(surface)
        @@surface = surface
    end

    def is_turn_left?(step)
        step.downcase == 'i'
    end

    def is_turn_right?(step)
        step.downcase == 'd'
    end

    def is_forward?(step)
        step.downcase == 'a'
    end

    def setNorth(car)
        car.set_orientation_final([-1, 'y'])
        return car
    end

    def setSouth(car)
        car.set_orientation_final([1, 'y'])
        return car
    end

    def setEast(car)
        car.set_orientation_final([1, 'x'])
        return car
    end

    def setError(error)
        @errors.push(error)
    end

    def getErrors()
        @errors
    end

    def setWest(car)
        car.set_orientation_final([-1, 'x'])
        return car
    end

    def isNorth?(car)
        car.get_orientation_final() == [-1,'y']
    end

    def isSouth?(car)
        car.get_orientation_final() == [1,'y']
    end

    def isEast?(car)
        car.get_orientation_final() == [1,'x']
    end

    def isWest?(car)
        car.get_orientation_final() == [-1,'x']
    end

    def is_valid_moveX?(car)
        car.get_cordX_final() + car.get_orientation_final()[0] >= 0 && car.get_cordX_final()+car.get_orientation_final()[0] <= @@surface.get_columns()
    end

    def is_valid_moveY?(car)
        car.get_cordY_final() + car.get_orientation_final()[0] >= 0 && car.get_cordY_final()+car.get_orientation_final()[0] <= @@surface.get_rows()
    end

    def set_cant_cars(n)
        @cant_cars = n
    end

    def get_cant_cars()
        @cant_cars
    end

    def move_car()
        rows = @@surface.get_rows()
        columns = @@surface.get_columns()
        car = @@surface.get_car();
        @@surface.get_car().get_sequence().each_char do |step|
            if(is_turn_left?(step))
                car = turn_left(car)
            elsif (is_turn_right?(step))
                car = turn_right(car)
            elsif (is_forward?(step))
                car = give_a_step_forward(car)
            else
                car = error_car('No se reconoció alguno(s) paso(s) de la secuencia', car)
            end
        end
        return car
    end    

    def verify_orientation?(o)
        o.downcase == 'n' || o.downcase == 's' || o.downcase == 'o' || o.downcase == 'e'
    end

    def move_cars()
        rows = @@surface.get_rows()
        columns = @@surface.get_columns()
        cars = @@surface.get_cars()
        length = @@surface.get_cars_length()
        print('ACTUAL LENGTH OF CARS ', length)
        cars.each_with_index do |car, index| 
            car.get_sequence().each_char do |step|
                if(is_turn_left?(step))
                    car = turn_left(car)
                elsif (is_turn_right?(step))
                    car = turn_right(car)
                elsif (is_forward?(step))
                    car = give_a_step_forward(car)
                else
                    car = error_car('No se reconoció alguno(s) paso(s) de la secuencia', car)
                end
            end
        end
    end    
end
