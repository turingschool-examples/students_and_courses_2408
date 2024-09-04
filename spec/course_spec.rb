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
    end

    describe '#student enrollment' do
        it 'starts with an empty array of students' do
            expect(@course.students).to eq([])
        end

        it 'indicates when it is not full' do
            student1 = Student.new({name: "Morgan", age: 21})
            student2 = Student.new({name: "Jordan", age: 29})  
            @course.enroll(student1)

            expect(@course.full?).to eq(false)
        end

        it 'can enroll students' do
            student1 = Student.new({name: "Morgan", age: 21})
            @course.enroll(student1)
            expect(@course.students).to eq([student1])
        end

        it 'can enroll multiple students' do
            student1 = Student.new({name: "Morgan", age: 21})
            student2 = Student.new({name: "Jordan", age: 29})  
            @course.enroll(student1)
            @course.enroll(student2)

            expect(@course.students).to eq([student1, student2])
        end

        it 'indicates when it is full' do
            student1 = Student.new({name: "Morgan", age: 21})
            student2 = Student.new({name: "Jordan", age: 29})  

            @course.enroll(student1)
            @course.enroll(student2)

            expect(@course.full?).to eq(true)
        end
    end
end
