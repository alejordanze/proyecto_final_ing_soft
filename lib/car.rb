class Car
    @cordx 
    @cordy
    @sequence

    def initialize()
        @cordx = 0
        @cordy = 0
        @sequence = ''
    end
    def setCords(x,y)
        @cordx = x
        @cordy = y
    end

    def getCordX()
        @cordx
    end

    def getCordY()
        @cordy
    end

    def setSequence(seq)
        @sequence = seq
    end

    def getSequence()
        @sequence
    end
end