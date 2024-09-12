require './lib/course'
require './lib/student'

RSpec.describe Course do
    before(:each) do
        @course = Course.new("Calculus", 2) 
        @student1 = Student.new({name: "Morgan", age: 21}) 
        @student2 = Student.new({name: "Jordan", age: 29})  
    end

    it "exists" do
        expect(@course).to be_instance_of(Course)
    end

    it "has a name and capacity" do
        expect(@course.name).to eq("Calculus")
        expect(@course.capacity). to eq(2)
    end

    it "students start empty" do
        expect(@course.students). to eq([])
    end

    it "can reach capacity" do
        expect(@course.full?).to eq(false)
    end

    it "can enroll students" do
        @course.enroll(@student1)
        
        expect(@course.full?).to eq(false)
        
        @course.enroll(@student2)

        expect(@course.students).to eq([@student1, @student2])
        expect(@course.full?).to eq(true)
    end


end