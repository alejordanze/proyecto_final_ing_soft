class Car
    @cordx 
    @cordy
    @sequence

    def initialize()
        @cordx = 0
        @cordy = 0
        @sequence = ''
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

    def set_sequence(seq)
        @sequence = seq
    end

    def get_sequence()
        @sequence
    end
end