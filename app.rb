require 'sinatra'
get '/' do
    @dim_x = 0
    @dim_y = 0
    erb :home
end

post '/simulate' do
    @dim_x = params[:columnas].to_i
    @dim_y = params[:filas].to_i
    erb :home
end