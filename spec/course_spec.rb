require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do 
    before(:each) do

        @student1 = Student.new({name: "Morgan", age: 21})
        @student2 = Student.new({name: "Jordan", age: 29})
        @course = Course.new("Calculus", 2) 
    end
    
    it 'exists' do
        expect(@course).to be_an_instance_of(Course)
    end
    
    it 'Can provide information on the Class' do

        expect(@course.class_name).to eq("Calculus")
        expect(@course.capacity).to eq(2)   
        expect(@course.students).to eq([])
        expect(@course.full?).to eq false        
    end
    
    it 'Can enroll a Student' do

        @course.enroll(@student1)    
        @course.enroll(@student2)

        # require 'pry'; binding.pry
        
        expect(@course.students).to include(@student1,@student2)
    end
    
    it 'Can determine if Course is full' do

        @course.enroll(@student1)    
        @course.enroll(@student2)
        expect(@course.full?).to eq true

    end

end

