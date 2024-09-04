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

    describe '#add_course' do
        it 'can add a course' do
            expect(@gradebook1.courses).to eq([])
            @gradebook1.add_course(@course1)
            expect(@gradebook1.courses.count).to eq(1)
            @gradebook1.add_course(@course2)
            expect(@gradebook1.courses.count).to eq(2)
            expect(@gradebook2.courses.count).to eq([])
        end
    end

    

end
