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

    it "It returns 0 cars when cars on suface there are not cars" do
        cars=Array.new{Car.new}
        @surface.set_cars(cars)
        expect(@surface.get_cars_length()).to eq(0)
    end
    
    it "It returns 1 car when cars on suface are only 1" do
        cars=Array.new{Car.new}
        cars.push(@car)
        @surface.set_cars(cars)
        expect(@surface.get_cars_length()).to eq(1)
    end

    it "It returns 10 car when cars on suface are  10" do
        cars=Array.new{Car.new}
        for a in 1..10 do
            cars.push(@car)
        end            
        @surface.set_cars(cars)
        expect(@surface.get_cars_length()).to eq(10)
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