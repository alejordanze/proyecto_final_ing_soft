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
    @@car.set_cords(params[:cord_x].to_i, params[:cord_y].to_i)
    @@car.set_cords_final(params[:cord_x].to_i, params[:cord_y].to_i)
    @@car.set_input_orientation(params[:orientation])
    @@car.set_sequence(params[:sequence])
    @@surface.set_car(@@car)
    @@game.set_Surface(@@surface)
    getValues()
    erb :home
end

def getValues()
    @columns = @@surface.get_columns()
    @rows = @@surface.get_rows()
    @cordx = @@car.get_cordX()
    @cordy = @@car.get_cordY()
    @orientation = @@car.get_orientation()
    @seq = @@car.get_sequence()
    @@game.move_car()
    @orientation_final = @@car.get_orientation_final()
    @final_cordx = @@car.get_cordX_final()
    @final_cordy = @@car.get_cordY_final()
end
#end