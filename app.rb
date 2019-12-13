require 'sinatra'
require './lib/surface'
require './lib/car'
require './lib/Game'

#class App < Sinatra::Base
@@surface = Surface.new
@@car = Car.new
@@game = Game.new(@@surface)
@@cant_autos = 0

get '/' do
    getValues()
    @@surface.set_cars([])
    erb :home
end

post '/simulate' do
    @show = true
    @nocars = ""
    @show_results = false
    @name = params[:nombre]
    @@surface.set_surface(params[:columnas].to_i, params[:filas].to_i)
    if(@@surface.is_valid_dimensions?())
        print('CANT AUTOS ', params[:cant_autos])
        if(params[:cant_autos].to_i > 0)
            @dimensions = "La dimension actual es de #{@@surface.get_columns()}x#{@@surface.get_rows()}"
            @@cant_autos = params[:cant_autos].to_i
            for i in 1..@@cant_autos do
                @@surface.get_cars().push(Car.new)
            end
            @cars = @@surface.get_cars()
            print("how many cars => ",@@surface.get_cars().length)
        else 
            @show = false
            @nocars = "Tienes que introducir una cantidad de autos"
        end
    else
        @show = false
        if(params[:cant_autos].to_i == 0) 
            @nocars = "Tienes que introducir una cantidad de autos"
        end
        @dimensions = "No se puede simular en una superficie con esas dimensiones"
    end
    
    erb :simulate
end

post '/simulator' do 
    @show = true
    @show_results = true
    print('IS VALID DIMENSIONS ==> ', @@surface.is_valid_dimensions?())
    if(@@surface.is_valid_dimensions?())
        for i in 0..@@cant_autos-1 do
            if(@@surface.verify_cords?(params["cord_x_#{i}".to_sym].to_i, params["cord_y_#{i}".to_sym].to_i))
                print('params each ', params["cord_x_#{i}".to_sym], params["cord_y_#{i}".to_sym], params["orientation_#{i}".to_sym], params["sequence_#{i}".to_sym])
                @@surface.get_cars()[i].set_cords(params["cord_x_#{i}".to_sym].to_i, params["cord_y_#{i}".to_sym].to_i)
                @@surface.get_cars()[i].set_cords_final(params["cord_x_#{i}".to_sym].to_i, params["cord_y_#{i}".to_sym].to_i)
                @@surface.get_cars()[i].set_input_orientation(params["orientation_#{i}".to_sym])
                @@surface.get_cars()[i].set_sequence(params["sequence_#{i}".to_sym])
            else
                @show_results = false
                if !@@surface.get_cars().include? "Las coordenadas son negativas o estan fuera de la superficie" 
                    @@surface.get_cars()[i].add_error('Las coordenadas son negativas o estan fuera de la superficie')
                end
            end
        end
        @@game.set_Surface(@@surface)
        getValues()
    else
        @dimensions = "No se puede simular en una superficie con esas dimensiones"
    end
    erb :simulate
end

def getValues()
    @@game.move_cars()
    @dimensions = "La dimension actual es de #{@@surface.get_columns()}x#{@@surface.get_rows()}"
    @msg_orientation = "La orientacion inicial es de #{@@surface.get_car().get_orientation()}"
    @msg_seq = "La secuencia es #{@@surface.get_car().get_sequence()}"
    @msg_orientation_final = "La orientacion final es de #{@@surface.get_car().get_orientation_final()}"
    @msg_final_cords = "La posicion final es de #{@@surface.get_car().get_cordX_final()},#{@@surface.get_car().get_cordY_final()}"
    @msg_cords = "La posicion inicial es de #{@@surface.get_car().get_cordX()},#{@@surface.get_car().get_cordY()}"
end


