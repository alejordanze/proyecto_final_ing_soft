require 'Game'

RSpec.describe Game do

    before(:each) do
        @game = Game.new
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

    it 'It returns "turn left" when we call turn_left' do
        expect(@game.turn_left()).to eq('turning left')
    end

    it 'It returns "turn right" when we call turn_right' do
        expect(@game.turn_right()).to eq('turning right')
    end
    
    it 'It returns "moving forward" when we call give_a_step_forward' do
        expect(@game.give_a_step_forward()).to eq('moving forward')
    end
    
    it 'It returns "moving forward" when we call give_a_step_forward' do
        expect(@game.give_a_step_forward()).to eq('moving forward')
    end

    it 'It returns the final position as 0,0 when we want to se the final position' do
        expect(@game.final_position()).to eq([0,0])
    end

    it 'It returns L when the instructions for traveling are L' do
        expect(@game.travel('L')).to eq('L')
    end

    it 'It returns R when the instructions for traveling are R' do
        expect(@game.travel('R')).to eq('R')
    end

    it 'It returns LR when the instructions for traveling are LR' do
        expect(@game.travel('LR')).to eq('LR')
    end

    it 'It returns LRF when the instructions for traveling are LRF' do
        expect(@game.travel('LRF')).to eq('LRF')
    end

end
