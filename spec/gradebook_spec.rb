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
    gradebook.add_course(course)
    expect(gradebook.courses.count).to eq(1)
  end

  it "can #list_all_students" do
  gradebook = Gradebook.new("John Smith")
  course = Course.new("Calculus",2)
  course2 = Course.new("Spanish",3)
  gradebook.add_course(course)
  gradebook.add_course(course2)
  student1 = Student.new({name: "Morgan", age: 21})
  student2 = Student.new({name: "Devlin", age: 33})
  student3 = Student.new({name: "Rupert", age: 20})
  course.enroll(student1) 
  course.enroll(student2)
  course2.enroll(student3)
  gradebook.list_all_students

  #require "pry"; binding. pry
  expect(gradebook.list_all_students.count).to eq(2)
  end

  it "can find #students_below a threshold" do
  gradebook = Gradebook.new("John Smith")
  course = Course.new("Calculus",2)
  course2 = Course.new("Spanish",3)
  gradebook.add_course(course)
  gradebook.add_course(course2)
  student1 = Student.new({name: "Morgan", age: 21})
  student2 = Student.new({name: "Devlin", age: 33})
  student3 = Student.new({name: "Rupert", age: 20})
  course.enroll(student1) 
  course.enroll(student2)
  course2.enroll(student3)
  student1.log_score(89)
  student2.log_score(78)
  student3.log_score(55)
  gradebook.students_below(60)
  #require "pry" ; binding.pry
  expect(gradebook.students_below(60)).to eq(course2:[student3])

  end

  it "can give #all_grades by course" do
  gradebook = Gradebook.new("John Smith")
  course = Course.new("Calculus",2)
  course2 = Course.new("Spanish",3)
  gradebook.add_course(course)
  gradebook.add_course(course2)
  student1 = Student.new({name: "Morgan", age: 21})
  student2 = Student.new({name: "Devlin", age: 33})
  student3 = Student.new({name: "Rupert", age: 20})
  course.enroll(student1) 
  course.enroll(student2)
  course2.enroll(student3)
  student1.log_score(89)
  student2.log_score(78)
  student3.log_score(55)
  gradebook.students_below(60)

  expect(gradebook.all_grades).to be_instance_of(Hash)
  end

  it "can give #students_in_range of grades" do
  gradebook = Gradebook.new("John Smith")
  course = Course.new("Calculus",2)
  course2 = Course.new("Spanish",3)
  gradebook.add_course(course)
  gradebook.add_course(course2)
  student1 = Student.new({name: "Morgan", age: 21})
  student2 = Student.new({name: "Devlin", age: 33})
  student3 = Student.new({name: "Rupert", age: 20})
  course.enroll(student1) 
  course.enroll(student2)
  course2.enroll(student3)
  student1.log_score(89)
  student2.log_score(78)
  student3.log_score(55)

  expect(gradebook.students_in_range(60,90)).to eq([student1,student2])
  end
end