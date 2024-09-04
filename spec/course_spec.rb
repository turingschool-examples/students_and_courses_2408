require 'rspec'
require './lib/course'
require './lib/student'

course = Course.new("Calculus", 2)

RSpec.describe Course do
    it "exists" do
      course = Course.new("Calculus", 2)
      expect(course).to be_instance_of(Course)
    end

    it 'can give the name of the course' do
        course = Course.new("Calculus", 2)
        expect(course.name).to eq("Calculus")
    end

    it 'can give the course capacity' do
        course = Course.new("Calculus", 2)
        expect(course.capacity).to eq(2)
    end

    it 'starts with an empty array of students' do
        course = Course.new("Calculus", 2)
        expect(course.students).to eq([])
    end

    it 'can tell you if the course is full' do
        course = Course.new("Calculus", 2)
        expect(course.full?).to eq(false)
    end

    it 'can enroll students' do
        course = Course.new("Calculus", 2)
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29}) 
        course.enroll(student1)
        course.enroll(student2)
        expect(course.full?).to eq(true)
    end
end