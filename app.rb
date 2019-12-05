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
    @@surface.setSurface(params[:columnas].to_i, params[:filas].to_i)
    @@car.setCords(params[:cord_x].to_i, params[:cord_y].to_i)
    @@car.setSequence(params[:sequence])
    @@surface.setCar(@@car)
    @@game.set_Surface(@@surface)
    getValues()
    erb :home
end

def getValues()
    @columns = @@surface.getColumns()
    @rows = @@surface.getRows()
    @cordx = @@car.getCordX()
    @cordy = @@car.getCordY()
    @seq = @@car.getSequence()

    @final_cords = @@game.move_car()
    @final_cordx = @final_cords[0]
    @final_cordy = @final_cords[1]
end