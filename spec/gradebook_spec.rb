require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
    before(:each) do
        @gradebook = Gradebook.new("Prof_Nick", []) 
        @student1 = Student.new({name: "Morgan", age: 21}) 
        @student2 = Student.new({name: "Jordan", age: 29})  
        @course = Course.new("Calculus", 2) 
    end

    it "exists" do
        expect(@gradebook).to be_instance_of(Gradebook)
    end

    it "has an instructor and course" do
        expect(@gradebook.instructor).to eq("Prof_Nick")
        expect(@gradebook.courses).to eq([])
    end

    it "can add a course" do
        expect(@gradebook.add_course("BE_coding")).to eq(["BE_coding"])  
        expect(@gradebook.courses).to eq(["BE_coding"])
    end

    it "can list all students by course" do
        @gradebook.add_course(@course)
        @course.enroll(@student1)
        @course.enroll(@student2)

        expect(@gradebook.list_all_students).to eq({Calculus: [@student1, @student2]})

    end
end