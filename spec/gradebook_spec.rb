require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'
require 'pry'

RSpec.describe Course do
    before(:each) do
        @course1 = Course.new("Calculus", 2) 
        @course2 = Course.new("Cooking", 4) 
        @student1 = Student.new({name: "Morgan", age: 21})
        @student2 = Student.new({name: "Jordan", age: 29})
        @gradebook1 = Gradebook.new("Judy")
        @gradebook2 = Gradebook.new("Keith")
    end

    describe "#initialization" do
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
            expect(@gradebook2.courses.count).to eq(0)
        end
    end

    describe '#list_all_students' do
        it 'can list students' do
            @course1.enroll(@student1)
            @gradebook1.add_course(@course1)
            expect(@gradebook1.list_all_students).to eq({@course1 => [@student1]})
            @course1.enroll(@student2)
            expect(@gradebook1.list_all_students).to eq({@course1 => [@student1, @student2]})
            @course2.enroll(@student1)
            @gradebook1.add_course(@course2)
            expect(@gradebook1.list_all_students).to eq({@course1 => [@student1, @student2], @course2 => [@student1]})
        end
    end

    describe '#students_below' do
        it 'can list all students whose grade is below a threshhold' do
            @student1.log_score(65)
            @student1.log_score(85) #75
            @student2.log_score(95)
            @student2.log_score(72) #83.5
            @course1.enroll(@student1)
            @course1.enroll(@student2)
            @gradebook1.add_course(@course1)
            expect(@gradebook1.students_below(80.0)).to eq ({@course1 => [@student1]})
        end
    end

end
