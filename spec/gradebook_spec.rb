require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do
    before(:each) do
        @gradebook = Gradebook.new("Nick Teets")
        @course = Course.new("Calculus", 2)
        @course2 = Course.new("Intro to Watercolors", 25)
        @course3 = Course.new("Iguanas 101", 10)

        @student1 = Student.new({name: "Morgan", age: 21})
        @student2 = Student.new({name: "Jordan", age: 29})  

        @student1.log_score(56)
        @student1.log_score(60)
        @student1.log_score(62)
    end

    describe '#initialze' do
        it "exists" do
            expect(@gradebook).to be_instance_of(Gradebook)
        end
    end

    describe '#courses' do
        it 'starts with an empty array of courses' do

            expect(@gradebook.courses).to eq([])
        end

        it 'can add courses' do
            @gradebook.add_course(@course)
            @gradebook.add_course(@course2)
            @gradebook.add_course(@course3)

            expect(@gradebook.courses).to eq([@course, @course2, @course3])
        end

        it 'can list the students enrolled in each course' do
            @gradebook.add_course(@course)
            @gradebook.add_course(@course2)
            @gradebook.add_course(@course3)

            @course.enroll(@student1)
            @course.enroll(@student2)

            expected = {
                @course => [@student1, @student2],
                @course2 => [],
                @course3 => []
            }

            expect(@gradebook.list_all_students).to eq(expected)
        end
    end

    describe '#students below' do
        it 'identifies students with grades below a given threshold' do
            @gradebook.add_course(@course)
            @course.enroll(@student1)

            expect(@gradebook.students_below(60)).to eq([@student1])
        end
    end
end