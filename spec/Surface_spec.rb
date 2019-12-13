require 'surface'
require 'car'

RSpec.describe Surface do

    before(:each) do
        @surface=Surface.new
        @car=Car.new
    end

    it 'It returns 1 when columns are 1 and rows are 0' do
        @surface.set_surface(1,0)
        expect(@surface.get_columns()).to eq(1)
    end

    it 'It returns 1 when columns are 0 and rows are 1' do
        @surface.set_surface(0,1)
        expect(@surface.get_rows()).to eq(1)
    end
    
    it 'It returns true when columns are 1 and rows are 1' do
        @surface.set_surface(1,1)
        expect(@surface.is_valid_dimensions?()).to eq(true)
    end

    it 'It returns false when columns are 1 and rows are 0' do
        @surface.set_surface(1,0)
        expect(@surface.is_valid_dimensions?()).to eq(false)
    end

    it 'It returns false when columns are 0 and rows are 0' do
        @surface.set_surface(0,0)
        expect(@surface.is_valid_dimensions?()).to eq(false)
    end

    it 'It returns false when columns are -1 and rows are -1' do
        @surface.set_surface(-1,-1)
        expect(@surface.is_valid_dimensions?()).to eq(false)
    end
end