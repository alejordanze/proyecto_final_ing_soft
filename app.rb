require 'sinatra'
require './lib/surface'
require './lib/car'

@@surface = Surface.new
@@car = Car.new

get '/' do
    getValues()
    erb :home
end

post '/simulate' do
    @@surface.setSurface(params[:columnas].to_i, params[:filas].to_i)
    @@car.setCords(params[:cord_x].to_i, params[:cord_y].to_i)
    @@car.setSequence(params[:sequence])
    getValues()
    erb :home
end

def getValues()
    @columns = @@surface.getColumns()
    @rows = @@surface.getRows()
    @cordx = @@car.getCordX()
    @cordy = @@car.getCordY()
    @seq = @@car.getSequence()
end