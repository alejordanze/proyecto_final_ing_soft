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
        if(ori.downcase == 'n') 
            @orientation = [-1,'y']
            @orientation_final = [-1,'y']
        elsif(ori.downcase == 's')
            @orientation = [1,'y']
            @orientation_final = [1,'y']
        elsif(ori.downcase == 'e')
            @orientation = [1,'x']
            @orientation_final = [1,'x']
        elsif(ori.downcase == 'o')
            @orientation = [-1,'x']
            @orientation_final = [-1,'x']
        end
    end

    def get_char_orientation()
        if(isNorth?(@orientation)) 
            'N'
        elsif(isSouth?(@orientation))
            'S'
        elsif(isEast?(@orientation))
            'E'
        elsif(isWest?(@orientation))
            'O'
        end
    end

    def get_char_orientation_final()
        if(isNorth?(@orientation_final)) 
            'N'
        elsif(isSouth?(@orientation_final))
            'S'
        elsif(isEast?(@orientation_final))
            'E'
        elsif(isWest?(@orientation_final))
            'O'
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

    def isNorth?(ori)
        ori == [-1,'y']
    end

    def isSouth?()
        ori == [1,'y']
    end

    def isEast?()
        ori == [1,'x']
    end

    def isWest?()
        ori == [-1,'x']
    end
end