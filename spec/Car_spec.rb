require 'car'

RSpec.describe Car do

    before(:each) do
        @car=Car.new
    end

    it 'It returns cord x equals 0 when we put cord x = 0' do
        @car.set_cords(0,0)
        expect(@car.get_cordX()).to eq(0)
    end

    it 'It returns cord x equals 1 when we put cord x = 1' do
        @car.set_cords(1,0)
        expect(@car.get_cordX()).to eq(1)
    end

    it 'It returns cord y equals 0 when we put cord y = 0' do
        @car.set_cords(0,0)
        expect(@car.get_cordY()).to eq(0)
    end

    it 'It returns cord y equals 1 when we put cord y = 1' do
        @car.set_cords(0,1)
        expect(@car.get_cordY()).to eq(1)
    end

    it 'It returns cord x equals 0 when we put cord x = 0' do
        @car.set_cords_final(0,0)
        expect(@car.get_cordX_final()).to eq(0)
    end

    it 'It returns cord x equals 1 when we put cord x = 1' do
        @car.set_cords_final(1,0)
        expect(@car.get_cordX_final()).to eq(1)
    end

    it 'It returns cord y equals 0 when we put cord y = 0' do
        @car.set_cords_final(0,0)
        expect(@car.get_cordY_final()).to eq(0)
    end

    it 'It returns cord y equals 1 when we put cord y = 1' do
        @car.set_cords_final(0,1)
        expect(@car.get_cordY_final()).to eq(1)
    end

    it 'It returns N when orientation is N' do
        @car.set_orientation('N')
        expect(@car.get_orientation()).to eq('N')
    end

    it 'It returns S when orientation is S' do
        @car.set_orientation('S')
        expect(@car.get_orientation()).to eq('S')
    end
    
    it 'It returns E when orientation is E' do
        @car.set_orientation('E')
        expect(@car.get_orientation()).to eq('E')
    end

    it 'It returns O when orientation is O' do
        @car.set_orientation('O')
        expect(@car.get_orientation()).to eq('O')
    end
    
    it 'It returns final orientation N when orientation is N' do
        @car.set_orientation_final('N')
        expect(@car.get_orientation_final()).to eq('N')
    end

    it 'It returns S when orientation is S' do
        @car.set_orientation_final('S')
        expect(@car.get_orientation_final()).to eq('S')
    end
    
    it 'It returns E when orientation is E' do
        @car.set_orientation_final('E')
        expect(@car.get_orientation_final()).to eq('E')
    end

    it 'It returns O when orientatiom is O' do
        @car.set_orientation_final('O')
        expect(@car.get_orientation_final()).to eq('O')
    end

    it 'It returns I when sequence is I' do
        @car.set_sequence('I')
        expect(@car.get_sequence()).to eq('I')
    end

    it 'It returns D when sequence is D' do
        @car.set_sequence('D')
        expect(@car.get_sequence()).to eq('D')
    end

    it 'It returns A when sequence is A' do
        @car.set_sequence('A')
        expect(@car.get_sequence()).to eq('A')
    end

    it 'It returns ID when sequence is ID' do
        @car.set_sequence('ID')
        expect(@car.get_sequence()).to eq('ID')
    end

    it 'It returns IA when sequence is IA' do
        @car.set_sequence('IA')
        expect(@car.get_sequence()).to eq('IA')
    end

    it 'It returns AI when sequence is AI' do
        @car.set_sequence('AI')
        expect(@car.get_sequence()).to eq('AI')
    end

    it 'It returns AD when sequence is AD' do
        @car.set_sequence('AD')
        expect(@car.get_sequence()).to eq('AD')
    end

    it 'It returns DI when sequence is DI' do
        @car.set_sequence('DI')
        expect(@car.get_sequence()).to eq('DI')
    end

    it 'It returns DA when sequence is DA' do
        @car.set_sequence('DA')
        expect(@car.get_sequence()).to eq('DA')
    end

    it 'It returns III when sequence is III' do
        @car.set_sequence('III')
        expect(@car.get_sequence()).to eq('III')
    end

    it 'It returns DDD when sequence is DDD' do
        @car.set_sequence('DDD')
        expect(@car.get_sequence()).to eq('DDD')
    end

    it 'It returns AAA when sequence is AAA' do
        @car.set_sequence('AAA')
        expect(@car.get_sequence()).to eq('AAA')
    end

    it 'It returns IAIAD when sequence is IAIAD' do
        @car.set_sequence('IAIAD')
        expect(@car.get_sequence()).to eq('IAIAD')
    end

    it 'It returns -1,y when orientation is N' do
        expect(@car.set_input_orientation('N')).to eq([-1,'y'])
    end

    it 'It returns 1,y when orientation is S' do
        expect(@car.set_input_orientation('S')).to eq([1,'y'])
    end

    it 'It returns 1,x when orientation is E' do
        expect(@car.set_input_orientation('E')).to eq([1,'x'])
    end

    it 'It returns -1,x when orientation is O' do
        expect(@car.set_input_orientation('O')).to eq([-1,'x'])
    end

    it 'It returns 0 when it is assigned cordx final as 0' do
        expect(@car.set_cordX_final(0)).to eq(0)
    end

    it 'It returns 0 when it is assigned cordy final as 0' do
        expect(@car.set_cordY_final(0)).to eq(0)
    end

    it 'Return North when orientation [-1,y]' do
        @car.set_orientation([-1,'y'])
        expect(@car.get_char_orientation()).to eq('N')
    end

    it 'Return South when orientation [1,y]' do
        @car.set_orientation([1,'y'])
        expect(@car.get_char_orientation()).to eq('S')
    end

    it 'Return East when orientation [1,x]' do
        @car.set_orientation([1,'x'])
        expect(@car.get_char_orientation()).to eq('E')
    end

    it 'Return West when orientation [-1,x]' do
        @car.set_orientation([-1,'x'])
        expect(@car.get_char_orientation()).to eq('O')
    end
end