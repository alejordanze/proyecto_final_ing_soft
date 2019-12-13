class Car
    @cordx 
    @cordy
    @sequence
    @orientation
    @cordx_final
    @cordy_final
    @orientation_final
    def initialize()
        @cordx = 0
        @cordy = 0
        @sequence = ''
        @orientation = []
        @cordx_final = -1
        @cordy_final = -1
        @orientation_final = []
    end
    def set_cords(x,y)
        @cordx = x
        @cordy = y
    end

    def get_cordX()
        @cordx
    end

    def get_cordY()
        @cordy
    end

    def set_input_orientation(ori)
        if(ori == 'N') 
            @orientation = [-1,'y']
            @orientation_final = [-1,'y']
        elsif(ori == 'S')
            @orientation = [1,'y']
            @orientation_final = [1,'y']
        elsif(ori == 'E')
            @orientation = [1,'x']
            @orientation_final = [1,'x']
        elsif(ori == 'O')
            @orientation = [-1,'x']
            @orientation_final = [-1,'x']
        end
    end

    def set_orientation(ori)
        @orientation = ori
    end

    def set_orientation_final(ori)
        @orientation_final = ori
    end

    def get_orientation()
        @orientation
    end

    def get_orientation_final()
        @orientation_final
    end
    
    def set_sequence(seq)
        @sequence = seq
    end

    def get_sequence()
        @sequence
    end

    def set_cords_final(x,y)
        @cordx_final = x
        @cordy_final = y
    end

    def get_cordX_final()
        @cordx_final
    end

    def get_cordY_final()
        @cordy_final
    end

    def set_cordX_final(x)
        @cordx_final = x
    end

    def set_cordY_final(y)
        @cordy_final = y
    end
end