require 'rspec'
require './lib/student'
require './lib/course'

RSpec.describe Student do
  it "exists" do
    course = Course.new("Calculus",2)
    expect(course).to be_instance_of(Course)
  end

  it 'has initialization info' do
    course = Course.new("Calculus",2)
    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
    expect(course.students).to eq([])
  end

  it "can #enroll students" do
  course = Course.new("Calculus",2)
  student1 = Student.new({name: "Morgan", age: 21})
  student2 = Student.new({name: "Devlin", age: 33})
  course.enroll(student1) 
  course.enroll(student2)
  expect(course.students.count). to eq(2)
  end

  it "can check if class is #full?" do
    course = Course.new("Calculus",2)
    expect(course.full?).to eq(false)

    student1 = Student.new({name: "Morgan", age: 21})
    course.enroll(student1) 
    expect(course.full?).to eq(false)

    student2 = Student.new({name: "Devlin", age: 33})
    course.enroll(student2)
    expect(course.full?).to eq(true)

    student3 = Student.new({name: "Rupert", age: 30})
    expect(course.enroll(student3)).to eq("Class is full")
    expect(course.students.count).to eq(2)
    
end
end