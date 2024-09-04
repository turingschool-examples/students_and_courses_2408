require 'rspec'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Student do
  it "exists" do
    gradebook = Gradebook.new("John Smith")
    expect(gradebook).to be_instance_of(Gradebook)
  end

  it "has initialization info" do
    gradebook = Gradebook.new("John Smith")
    expect(gradebook.instructor).to eq("John Smith")
    expect(gradebook.courses).to eq([])
  end

  it "can #add_course to the gradebook" do
    gradebook = Gradebook.new("John Smith")
    course = Course.new("Calculus",2)
    expect(gradebook.add_course(course)).to eq(["Calculus"])
  end

  it "can #list_all_students" do
  gradebook = Gradebook.new("John Smith")
  course = Course.new("Calculus",2)
  student1 = Student.new({name: "Morgan", age: 21})
  student2 = Student.new({name: "Devlin", age: 33})
  course.enroll(student1) 
  course.enroll(student2)
  expect(gradebook.list_all_students).to eq(course:[student1,student2])
  end

  it "can find #students_below a threshold" do
  gradebook = Gradebook.new("John Smith")
  course = Course.new("Calculus",2)
  student1 = Student.new({name: "Morgan", age: 21})
  student2 = Student.new({name: "Devlin", age: 33})
  course.enroll(student1) 
  course.enroll(student2)
  student1.log_score(89)
  student2.log_score(55)

  expect(gradebook.students_below(60)).to eq(course:[student2])

  end