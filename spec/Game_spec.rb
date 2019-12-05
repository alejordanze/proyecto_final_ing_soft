require 'Game'
require 'surface'
require 'car'

RSpec.describe Game do

    before(:each) do
        @car=Car.new
        @surface = Surface.new
        @surface.set_car(@car)
        @game = Game.new(@surface)
    end

    it 'It returns 1 when width=1 and length=1' do
        expect(@game.define_surface_size(1,1)).to eq(1)
    end

    it 'It returns 1 when width=2 and length=1' do
        expect(@game.define_surface_size(2,1)).to eq(2)
    end

    it 'It returns 1 when width=5 and length=2' do
        expect(@game.define_surface_size(5,2)).to eq(10)
    end

    it 'It returns x=1 and y=1' do
        expect(@game.define_initial_position(1,1)).to eq([1,1])
    end

    it 'It returns x=2 and y=5' do
        expect(@game.define_initial_position(2,5)).to eq([2,5])
    end

    it 'It returns 0 when we call turn_left with 1' do
        @car.set_cords(0,0)
        @car.set_sequence('I')
        @surface.set_surface(5,5)
        expect(@game.turn_left(1)).to eq(0)
    end

    it 'It returns 2 when we call turn_right with 1' do
        @car.set_cords(0,0)
        @car.set_sequence('D')
        @surface.set_surface(5,5)
        expect(@game.turn_right(1)).to eq(2)
    end
    
    it 'It returns 1 when we call give_a_step_forward with 2' do
        expect(@game.give_a_step_forward(2)).to eq(1)
    end
    
    it 'It returns the final position as 0,0 when we want to se the final position' do
        expect(@game.final_position()).to eq([0,0])
    end

    it 'It returns final x=0 and final y=0 when initial x=0 and initial y=0 and sequence is "D" on surface 0x0' do
        @car.set_cords(0,0)
        @car.set_sequence('D')
        @surface.set_surface(0,0)
        expect(@game.move_car()).to eq([0,0])
    end

    it 'It returns final x=2 and final y=1 when initial x=1 and initial y=1 and sequence is "D" on surface 3x3' do
        @car.set_cords(1,1)
        @car.set_sequence('D')
        @surface.set_surface(3,3)
        expect(@game.move_car()).to eq([2,1])
    end

    it 'It returns final x=0 and final y=1 when initial x=1 and initial y=1 and sequence is "I" on surface 3x3' do
        @car.set_cords(0,1)
        @car.set_sequence('I')
        @surface.set_surface(3,3)
        expect(@game.move_car()).to eq([0,1])
    end

    it 'It returns final x=1 and final y=1 when initial x=1 and initial y=1 and sequence is "ID" on surface 3x3' do
        @car.set_cords(1,1)
        @car.set_sequence('ID')
        @surface.set_surface(3,3)
        expect(@game.move_car()).to eq([1,1])
    end

    it 'It returns final x=4 and final y=1 when initial x=1 and initial y=1 and sequence is "IDDDD" on surface 5x5' do
        @car.set_cords(1,1)
        @car.set_sequence('IDDDD')
        @surface.set_surface(5,5)
        expect(@game.move_car()).to eq([4,1])
    end

    it 'It returns final x=1 and final y=0 when initial x=1 and initial y=1 and sequence is "IDA" on surface 5x5' do
        @car.set_cords(1,1)
        @car.set_sequence('IDA')
        @surface.set_surface(5,5)
        expect(@game.move_car()).to eq([1,0])
    end
end
