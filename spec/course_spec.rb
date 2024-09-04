require './spec/spec_helper'

RSpec.describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
  end
  
  it 'exits' do
    expect(@course).to be_instance_of(Course)
  end

  it 'has a name' do
    expect(@course.name).to eq("Calculus")
  end

  it 'has a capacity' do
    expect(@course.capacity).to eq(2)
  end

  it 'begins without students' do
    expect(@course.students).to eq([])
  end

  it 'begins with room for students' do
    expect(@course.full?).to be false
  end

  it 'can enroll students' do
    @course.enroll(@student1)
    expect(@course.students).to eq([@student1])
    @course.enroll(@student2)
    expect(@course.students).to eq([@student1, @student2])
  end

  it 'knows when it is at capacity' do
    @course.enroll(@student1)
    @course.enroll(@student2)
    expect(@course.full?).to be true
  end

  it 'will not enroll beyond capcity' do
    @course.enroll(@student1)
    @course.enroll(@student2)
    @student3 = Student.new({name: "Ron", age: 54})
     feedback = @course.enroll(@student3)
    expect(feedback).to eq("Sorry. No space")
  end
end    

