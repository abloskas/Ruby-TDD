require_relative 'tree'
RSpec.describe Tree do
    before(:each) do
        @tree1 = Tree.new
    end
    it 'has a getter and setter method' do
        @tree1.age += 1 
        expect(@tree1.age).to eq(1)
    end
    it 'has height attribute with only a getter method' do
       expect(@tree1.height).to eq(2)
       expect { @tree1.height = 1 }. to raise_error(NoMethodError)
    end
    it 'has apple count attribute with only a getter method' do
        expect(@tree1.count).to eq(0)
        expect { @tree1.count = 1 }. to raise_error(NoMethodError)
    end
    it 'has a method called year_gone_by' do
        @tree1.age = 2     #random age for test purpose 
        @tree1.year_gone_by
        expect(@tree1.age).to eq(3)
        expect(@tree1.height).to eq(2.2)
        expect(@tree1.count).to eq(0)
    end
    it 'has method to pick all apples off tree' do
        @tree1.pick_apples
        expect(@tree1.count).to eq(0)
    end

    context 'as long as NOT younger than 3 yrs' do
        it 'can grow apples' do
            @tree1.age = 3
            @tree1.year_gone_by
            expect(@tree1.count).to eq(2)
        end
    end

    context 'if younger than growing age' do
        it 'cannot grow apples' do
            @tree1.age = 2
            @tree1.year_gone_by
            expect(@tree1.count).to eq(0)
        end
    end
    context 'if older than growing age' do
        it 'cannot grow apples' do
            @tree1.age = 11
            @tree1.year_gone_by
            expect(@tree1.count).to eq(0)
        end
    end
end