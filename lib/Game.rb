require './lib/surface'

class Game
    @surface
    @final_cordx
    @final_cordy
    def initialize(surface)
      @surface = surface
      @final_cordx = 0
      @final_cordy = 0
    end

    def define_surface_size(width,length)
        width*length
    end

    def define_initial_position(x,y)
        return x, y
    end

    def turn_left()
        'turning left'
    end

    def turn_right()
        'turning right'
    end

    def give_a_step_forward()
        'moving forward'
    end

    def final_position()
        return @final_cordx,@final_cordy
    end

    def travel(cad)
        cad
    end

    def move_car()
        rows = @surface.getRows()
        columns = @surface.getColumns()
        final_cordx = @surface.getCar().getCordX()
        final_cordy = @surface.getCar().getCordY()
        @surface.getCar().getSequence().each_char do |step|
            if(step=='I')
                if(final_cordx-1>=0)
                    final_cordx=final_cordx-1
                end
            elsif (step=='D')
                if(final_cordx+1<=columns-1)
                    final_cordx=final_cordx+1
                end
            elsif (step=='A')
                if(final_cordy+1<=rows-1)
                    final_cordx=final_cordy+1
                end
            end
        end
        return final_cordx,final_cordy
    end    
end