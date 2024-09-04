require 'rspec'
require './lib/gradebook'

RSpec.describe Gradebook do 
    before(:each) do 
        @gradebook = Gradebook.new("Nick Teets")
        @course1 = Course.new("Calculus", 2) 
        @course2 = Course.new("Psychology", 5) 
        @course3 = Course.new("Biology", 3)
        @student1 = Student.new({name: "Morgan", age: 21})
        @student2 = Student.new({name: "Jordan", age: 29}) 
        @student3 = Student.new({name: "Paul", age: 27})
    end

    it 'exists' do 
        expect(@gradebook).to be_instance_of (Gradebook)
    end

    it 'has an instructor' do 
        expect(@gradebook.instructor).to eq ("Nick Teets")
    end

    xit 'has courses' do 
        expect(@gradebook.courses).to eq ([])
    end

    xit 'can add courses' do 
        @gradebook.add_course(@course2)
        expect(@gradebook.courses).not_to eq ([])
        expect(@gradebook.courses).to eq ([@course2])
    end

    xit 'can have students' do
        @gradebook.add_course(@course1)
        @gradebook.add_course(@course2)
        @gradebook.add_course(@course3)
        @gradebook.add_student(@student1, @course1)
        @gradebook.add_student(@student1, @course2)
        @gradebook.add_student(@student2, @course1)
        @gradebook.add_student(@student2, @course2)
        @gradebook.add_student(@student3, @course3)
        @gradebook.add_student(@student3, @course2)
        expect(@gradebook.list_all_students).to eq ({course1: [student1,student2], course2: [student1, student2, student3], course3: [student3]})
    end

    xit 'can show students below a threshhold of grades' do 
        @gradebook.students_below(70)
    end
end