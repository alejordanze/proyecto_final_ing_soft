require 'Game'

RSpec.describe Game do

    before(:each) do
        @game = Game.new
    end

    it '' do
        expect(@game.define_surface_size(1,1)).to eq(1)
    end
    
end
