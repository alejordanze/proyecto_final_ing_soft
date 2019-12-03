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
    
end
