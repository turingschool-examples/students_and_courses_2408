require './lib/course'
require './lib/student'

RSpec.describe Course do

    before(:each) do
        @course = Course.new("Calculus", 2)
    end

    describe '#initialze' do
        it "exists" do
            expect(@course).to be_instance_of(Course)
        end

        it 'has a name' do
            expect(@course.name).to eq("Calculus")
        end

        it 'has a capacity' do
            expect(@course.capacity).to eq(2)
        end
        
        it 'starts with an empty array of students' do
            expect(@course.students).to eq([])
        end
    end
end
