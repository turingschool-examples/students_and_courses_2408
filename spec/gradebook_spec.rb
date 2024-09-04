RSpec.describe Course do
    before(:each) do
        @course1 = Course.new("Calculus", 2) 
        @course2 = Course.new("Cooking", 4) 
        @student1 = Student.new({name: "Morgan", age: 21})
        @student2 = Student.new({name: "Jordan", age: 29})
        @gradebook1 = Gradebook.new("Judy")
        @gradebook2 = Gradebook.new("Keith")
    end

    describe "#initialiation" do
        it 'can exist' do
            expect(@gradebook1).to be_instance_of(Gradebook)
        end

        it 'has a name' do
            expect(@gradebook1.name).to eq("Judy")
        end

        it 'has a different name' do 
            expect(@gradebook2.name).to eq("Keith")
        end

        it 'has courses' do
            expect(@gradebook1.courses).to eq([])
        end
    end
end
