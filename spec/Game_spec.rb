require 'Game'
require 'surface'
require 'car'

RSpec.describe Game do

    before(:each) do
        @car=Car.new
        @cars = Array.new{Car.new}
        @surface = Surface.new
        @surface.set_surface(10,10)
        @surface.set_car(@car)
        @game = Game.new(@surface)
    end

    it 'It returns car is West when it turs left from North' do
        @car.set_orientation_final([-1, 'y'])
        expect(@game.turn_left(@car).get_orientation_final()).to eq([-1, 'x'])
    end

    it 'It returns car is East when it turs left from South' do
        @car.set_orientation_final([1, 'y'])
        expect(@game.turn_left(@car).get_orientation_final()).to eq([1, 'x'])
    end

    it 'It returns car is North when it turs left from East' do
        @car.set_orientation_final([1, 'x'])
        expect(@game.turn_left(@car).get_orientation_final()).to eq([-1, 'y'])
    end

    it 'It returns car is South when it turs left from West' do
        @car.set_orientation_final([-1, 'x'])
        expect(@game.turn_left(@car).get_orientation_final()).to eq([1, 'y'])
    end

    it 'It returns car is West when it turs right from South' do
        @car.set_orientation_final([1, 'y'])
        expect(@game.turn_right(@car).get_orientation_final()).to eq([-1, 'x'])
    end

    it 'It returns car is East when it turs right from North' do
        @car.set_orientation_final([-1, 'y'])
        expect(@game.turn_right(@car).get_orientation_final()).to eq([1, 'x'])
    end

    it 'It returns car is North when it turs right from East' do
        @car.set_orientation_final([1, 'x'])
        expect(@game.turn_right(@car).get_orientation_final()).to eq([1, 'y'])
    end

    it 'It returns car is South when it turs left from West' do
        @car.set_orientation_final([-1, 'x'])
        expect(@game.turn_right(@car).get_orientation_final()).to eq([-1, 'y'])
    end

    it 'It returns car in cord x =1, cord y = 0, and its orientation to N when car is in cord x =1, cord y =1, and its orientation to N when sequence is A ' do
        @car.set_orientation_final([-1, 'y'])
        @car.set_cords_final(1,1)
        expect(@game.give_a_step_forward(@car).get_cordY_final()).to eq(0)
    end

    it 'It returns car in cord x =1, cord y = 2, and its orientation to S when car is in cord x =1, cord y =1, and its orientation to S when sequence is A ' do
        @car.set_orientation_final([1, 'y'])
        @car.set_cords_final(1,1)
        expect(@game.give_a_step_forward(@car).get_cordY_final()).to eq(2)
    end

    it 'It returns car in cord x =1, cord y = 0, and its orientation to N when car is in cord x =1, cord y =1, and its orientation to N when sequence is A ' do
        @car.set_orientation_final([-1, 'y'])
        @car.set_cords_final(1,1)
        expect(@game.give_a_step_forward(@car).get_cordY_final()).to eq(0)
    end

    it 'It returns car in cord x = 2, cord y = 1, and its orientation to E when car is in cord x =1, cord y =1, and its orientation to E when sequence is A ' do
        @car.set_orientation_final([1, 'x'])
        @car.set_cords_final(1,1)
        expect(@game.give_a_step_forward(@car).get_cordX_final()).to eq(2)
    end

    it 'It returns car in cord x = 0, cord y = 1, and its orientation to W when car is in cord x =1, cord y =1, and its orientation to W when sequence is W ' do
        @car.set_orientation_final([-1, 'x'])
        @car.set_cords_final(1,1)
        expect(@game.give_a_step_forward(@car).get_cordX_final()).to eq(0)
    end

    it 'It returns true when the sequence is i ' do
        expect(@game.is_turn_left?('i')).to eq(true)
    end

    it 'It returns true when the sequence is d ' do
        expect(@game.is_turn_right?('d')).to eq(true)
    end

    it 'It returns true when the sequence is a ' do
        expect(@game.is_forward?('a')).to eq(true)
    end

    it 'It returns quantity of cars in the game when it is 1 ' do
        @game.set_cant_cars(1)
        expect(@game.get_cant_cars()).to eq(1)
    end

    it 'It returns quantity of cars in the game when there are 5 ' do
        @game.set_cant_cars(5)
        expect(@game.get_cant_cars()).to eq(5)
    end

    it 'It returns car in cord x =1, cord y = 0, and orientation = N when car is in cord x =1, cord y =1, and orientation = N when sequence is A in a surface of 10x10' do
        @car.set_sequence('a')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('N')
        @surface.set_surface(10,10)
        @surface.set_car(@car)
        @car =@game.move_car()
        expect(@car.get_cordY_final()).to eq(0)
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([-1,'y'])
    end

    it 'It returns car in cord x =1, cord y = 2, and orientation = S when car is in cord x =1, cord y =1, and orientation = S when sequence is A in a surface of 10x10' do
        @car.set_sequence('a')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('S')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordY_final()).to eq(2)
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([1,'y'])
    end

    it 'It returns car in cord x =2, cord y = 1, and orientation = E when car is in cord x =1, cord y =1, and orientation = E when sequence is A in a surface of 10x10' do
        @car.set_sequence('a')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('E')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordX_final()).to eq(2)
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([1,'x'])
    end

    it 'It returns car in cord x = 0, cord y = 1, and orientation = O when car is in cord x =1, cord y =1, and orientation = O when sequence is A in a surface of 10x10' do
        @car.set_sequence('a')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('O')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordX_final()).to eq(0)
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([-1,'x'])
    end

    it 'It returns car in cord x =1, cord y = 1, and orientation = N when car is in cord x =1, cord y =1, and orientation = N when sequence is I in a surface of 10x10' do
        @car.set_sequence('i')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('N')
        @surface.set_surface(10,10)
        @surface.set_car(@car)
        @car =@game.move_car()
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([-1,'x'])
    end

    it 'It returns car in cord x =1, cord y = 1, and orientation = S when car is in cord x =1, cord y =1, and orientation = S when sequence is I in a surface of 10x10' do
        @car.set_sequence('i')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('S')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([1,'x'])
    end

    it 'It returns car in cord x =1, cord y = 1, and orientation = E when car is in cord x =1, cord y =1, and orientation = E when sequence is I in a surface of 10x10' do
        @car.set_sequence('i')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('E')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([-1,'y'])
    end

    it 'It returns car in cord x = 1, cord y = 1, and orientation = O when car is in cord x =1, cord y =1, and orientation = O when sequence is I in a surface of 10x10' do
        @car.set_sequence('i')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('O')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([1,'y'])
    end
    
    it 'It returns car in cord x =1, cord y = 1, and orientation = N when car is in cord x =1, cord y =1, and orientation = N when sequence is D in a surface of 10x10' do
        @car.set_sequence('d')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('N')
        @surface.set_surface(10,10)
        @surface.set_car(@car)
        @car =@game.move_car()
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([+1,'x'])
    end

    it 'It returns car in cord x =1, cord y = 1, and orientation = S when car is in cord x =1, cord y =1, and orientation = S when sequence is D in a surface of 10x10' do
        @car.set_sequence('d')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('S')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([-1,'x'])
    end

    it 'It returns car in cord x =1, cord y = 1, and orientation = E when car is in cord x =1, cord y =1, and orientation = E when sequence is D in a surface of 10x10' do
        @car.set_sequence('d')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('E')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([1,'y'])
    end

    it 'It returns car in cord x = 1, cord y = 1, and orientation = O when car is in cord x =1, cord y =1, and orientation = O when sequence is D in a surface of 10x10' do
        @car.set_sequence('d')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('O')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([-1,'y'])
    end

    it 'It returns car in cord x =2, cord y = 1, and orientation = N when car is in cord x =1, cord y =1, and orientation = N when sequence is DA in a surface of 10x10' do
        @car.set_sequence('da')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('N')
        @surface.set_surface(10,10)
        @surface.set_car(@car)
        @car =@game.move_car()
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_cordX_final()).to eq(2)
        expect(@car.get_orientation_final()).to eq([+1,'x'])
    end

    it 'It returns car in cord x =0, cord y = 1, and orientation = S when car is in cord x =1, cord y =1, and orientation = S when sequence is DA in a surface of 10x10' do
        @car.set_sequence('da')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('S')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_cordX_final()).to eq(0)
        expect(@car.get_orientation_final()).to eq([-1,'x'])
    end

    it 'It returns car in cord x =1, cord y = 2, and orientation = E when car is in cord x =1, cord y =1, and orientation = E when sequence is DA in a surface of 10x10' do
        @car.set_sequence('da')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('E')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_cordY_final()).to eq(2)
        expect(@car.get_orientation_final()).to eq([1,'y'])
    end

    it 'It returns car in cord x = 1, cord y = 0, and orientation = O when car is in cord x =1, cord y =1, and orientation = O when sequence is DA in a surface of 10x10' do
        @car.set_sequence('da')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('O')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_cordY_final()).to eq(0)
        expect(@car.get_orientation_final()).to eq([-1,'y'])
    end




    it 'It returns car in cord x =0, cord y = 1, and orientation = N when car is in cord x =1, cord y =1, and orientation = N when sequence is IA in a surface of 10x10' do
        @car.set_sequence('ia')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('N')
        @surface.set_surface(10,10)
        @surface.set_car(@car)
        @car =@game.move_car()
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_cordX_final()).to eq(0)
        expect(@car.get_orientation_final()).to eq([-1,'x'])
    end

    it 'It returns car in cord x =2, cord y = 1, and orientation = S when car is in cord x =1, cord y =1, and orientation = S when sequence is iA in a surface of 10x10' do
        @car.set_sequence('ia')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('S')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_cordX_final()).to eq(2)
        expect(@car.get_orientation_final()).to eq([+1,'x'])
    end

    it 'It returns car in cord x =1, cord y = 0, and orientation = E when car is in cord x =1, cord y =1, and orientation = E when sequence is iA in a surface of 10x10' do
        @car.set_sequence('ia')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('E')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_cordY_final()).to eq(0)
        expect(@car.get_orientation_final()).to eq([-1,'y'])
    end

    it 'It returns car in cord x = 1, cord y = 2, and orientation = O when car is in cord x =1, cord y =1, and orientation = O when sequence is iA in a surface of 10x10' do
        @car.set_sequence('ia')
        @car.set_cords_final(1,1)
        @car.set_input_orientation('O')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_cordY_final()).to eq(2)
        expect(@car.get_orientation_final()).to eq([1,'y'])
    end

    it 'It returns car in cord x = 1, cord y = 1, and orientation = N when car is in cord x =1, cord y = 2, and orientation = N when sequence is IAIAIAIAA in a surface of 10x10' do
        @car.set_sequence('iaiaiaiaa')
        @car.set_cords_final(1,2)
        @car.set_input_orientation('N')
        @surface.set_surface(10,10)
        @car =@game.move_car()
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([-1,'y'])
    end

    it 'It returns car in cord x = 1, cord y = 1, and orientation = N when car is in cord x =1, cord y = 2, and orientation = N when sequence is IAIAIAIAA in a surface of 5x5' do
        @car.set_sequence('iaiaiaiaad')
        @car.set_cords_final(1,2)
        @car.set_input_orientation('N')
        @surface.set_surface(5,5)
        @cars.push(@car)
        @surface.set_cars(@cars)
        @game.move_cars()
        expect(@car.get_cordX_final()).to eq(1)
        expect(@car.get_cordY_final()).to eq(1)
        expect(@car.get_orientation_final()).to eq([1,'x'])
    end
    
end
