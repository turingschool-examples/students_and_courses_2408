require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
    before(:each) do

        @student_1 = Student.new({name: "Morgan", age: 21})
        @student_2 = Student.new({name: "Jordan", age: 29})
        @student_3 = Student.new({name: "Billy Madison", age: 50})
        @student_4 = Student.new({name: "Reptar", age: 300})
        @student_5 = Student.new({name: "Jonathan", age: 35})
        
        @course_1 = Course.new("Calculus", 2)
        @course_2 = Course.new("Trig", 4)
        @course_3 = Course.new("Algebra", 5)
        @course_4 = Course.new("PE", 2)
        @course_5 = Course.new("CompSci", 18)
        
        
        @instructor_1 = Gradebook.new("Mrs.Rampton")
        @instructor_1.add_course(@course_1)
        @instructor_1.add_course(@course_2)
        @instructor_1.add_course(@course_3)
        @instructor_1.add_course(@course_4)
        @instructor_1.add_course(@course_5)



        @course_1.enroll(@student1,@student2,@student_3,@student_4)
        @course_2.enroll(@student_1,@student2,@student_3,@student_4,@student_5)
        @course_5.enroll(@student_1,@student_2,@student_5,@student_3)
    end
    
    it 'exists' do

        expect(@instructor_1).to be_an_instance_of(Gradebook)
    end
    
    it 'Can print off a list of all the students' do 

        expect(@instructor_1.list_all_students).to eq(expected)
        
    end



end
