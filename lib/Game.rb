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

    def turn_left(final_cordx)
        if(final_cordx - 1 >= 0)
            final_cordx = final_cordx - 1
        end
        return final_cordx
    end

    def turn_right(final_cordx)
        if(final_cordx + 1 < @surface.get_columns())
            final_cordx = final_cordx + 1
        end
        return final_cordx
    end

    def give_a_step_forward(final_cordy)
        if(final_cordy - 1 >= 0)
            final_cordy = final_cordy - 1
        end
        return final_cordy
    end

    def final_position()
        return @final_cordx,@final_cordy
    end

    def travel(cad)
        cad
    end

    def set_surface(surface)
        @surface = surface
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

    def move_car()
        rows = @surface.get_rows()
        columns = @surface.get_columns()
        final_cordx = @surface.get_car().get_cord_x()
        final_cordy = @surface.get_car().get_cord_y()
        @surface.get_car().get_sequence().each_char do |step|
            if(is_turn_left?(step))
                final_cordx = turn_left(final_cordx)
            elsif (is_turn_right?(step))
                final_cordx = turn_right(final_cordx)
            elsif (is_forward?(step))
                final_cordy = give_a_step_forward(final_cordy)
            end
        end
        return final_cordx,final_cordy
    end    
end