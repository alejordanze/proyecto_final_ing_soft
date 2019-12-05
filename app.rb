require 'sinatra'
require './lib/surface'
require './lib/car'
require './lib/Game'
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
    @@car.set_sequence(params[:sequence])
    @@surface.set_car(@@car)
    @@game.set_surface(@@surface)
    getValues()
    erb :home
end

def getValues()
    @columns = @@surface.get_columns()
    @rows = @@surface.get_rows()
    @cordx = @@car.get_cord_x()
    @cordy = @@car.get_cord_y()
    @seq = @@car.get_sequence()

    @final_cords = @@game.move_car()
    @final_cordx = @final_cords[0]
    @final_cordy = @final_cords[1]
end