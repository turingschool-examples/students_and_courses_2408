require 'rspec'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do

    it 'exists' do
        gradebook1 = Gradebook.new('mr google')
        expect(gradebook1).to be_instance_of(Gradebook)
        expect(gradebook1.courses).to eq []
    end
    it 'can have courses' do
        gradebook1 = Gradebook.new('mr google')
        course1 = Course.new("Calculus", 2)  
        gradebook1.add_course(course1)

        expect(gradebook1.courses).to eq [course1]
    end
    
    it 'can list students in course' do
        gradebook1 = Gradebook.new('mr google')
        course1 = Course.new("Calculus", 2)  
        course2 = Course.new("Reading", 3)  
       
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29})  

        gradebook1.add_course(course1)
        gradebook1.add_course(course2)
        course1.enroll(student1)
        course1.enroll(student2)
        course2.enroll(student1)

        expect(gradebook1.courses).to eq [course1, course2]
        expect(course1.students).to eq [student1, student2]
    end

end