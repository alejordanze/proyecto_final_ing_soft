require 'sinatra'
require './lib/surface'
require './lib/car'
require './lib/Game'

#class App < Sinatra::Base
@@surface = Surface.new
@@car = Car.new
@@game = Game.new(@@surface)


get '/' do
    getValues()
    erb :home
end

post '/simulate' do
    @@surface.set_surface(params[:columnas].to_i, params[:filas].to_i)
    print('IS VALID DIMENSIONS ==> ', @@surface.is_valid_dimensions?())
    if(@@surface.is_valid_dimensions?())
        @@surface.get_car().set_cords(params[:cord_x].to_i, params[:cord_y].to_i)
        @@surface.get_car().set_cords_final(params[:cord_x].to_i, params[:cord_y].to_i)
        @@surface.get_car().set_input_orientation(params[:orientation])
        @@surface.get_car().set_sequence(params[:sequence])
        print('PRINTING CAR CORD X ',@@surface.get_car().get_cordX())
        @@game.set_Surface(@@surface)
        getValues()
    else
        @dimensions = "No se puede simular en una superficie con esas dimensiones"
    end
    erb :home
end

def getValues()
    @@game.move_car()
    @dimensions = "La dimension actual es de #{@@surface.get_columns()}x#{@@surface.get_rows()}"
    @msg_orientation = "La orientacion inicial es de #{@@surface.get_car().get_orientation()}"
    @msg_seq = "La secuencia es #{@@surface.get_car().get_sequence()}"
    @msg_orientation_final = "La orientacion final es de #{@@surface.get_car().get_orientation_final()}"
    @msg_final_cords = "La posicion final es de #{@@surface.get_car().get_cordX_final()},#{@@surface.get_car().get_cordY_final()}"
    @msg_cords = "La posicion inicial es de #{@@surface.get_car().get_cordX()},#{@@surface.get_car().get_cordY()}"
    # @cordx = @@surface.get_car().get_cordX()
    # @cordy = @@surface.get_car().get_cordY()
    # @orientation = @@surface.get_car().get_orientation()
    # @seq = @@surface.get_car().get_sequence()
    # @orientation_final = @@surface.get_car().get_orientation_final()
    # @final_cordx = @@surface.get_car().get_cordX_final()
    # @final_cordy = @@surface.get_car().get_cordY_final()
end
#end