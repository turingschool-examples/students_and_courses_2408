require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do

  it 'exists' do
    course = Course.new("Calculus",2)
    expect(course).to be_instance_of(Course)
    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
    expect(course.students).to eq([])
  end

  before(:each) do
    @course = Course.new("History", 2)
    @student1 = Student.new({name: "Wally", age: 36})
    @student2 = Student.new({name: "Dahlia", age: 15})
    @student3 = Student.new({name: "Brinklee", age: 10})
  end

  describe '#enroll' do
    it 'can enroll a student in a course' do
      expect(@course.students).to eq([])
      @course.enroll(@student1)
      expect(@course.students).to eq([@student1])
    end

    it 'can enroll multiple students in a course' do
      expect(@course.students).to eq([])
      @course.enroll(@student1)
      @course.enroll(@student2)
      expect(@course.students).to eq([@student1, @student2])
    end
  end
      
  describe '#full?' do
    it 'returns false when the course is empty' do
      expect(@course.students).to eq([])
      expect(@course.full?).to eq(false)
    end

    it 'returns false when the course has students but not to capacity' do
      expect(@course.students).to eq([])
      expect(@course.full?).to eq(false)
      @course.enroll(@student1)
      expect(@course.full?).to eq(false)
    end

    it 'returns true when the course is at capacity' do
      expect(@course.students).to eq([])
      expect(@course.full?).to eq(false)
      @course.enroll(@student1)
      @course.enroll(@student2)
      expect(@course.full?).to eq(true)
    end

    it 'returns true when the course is over capacity' do
      expect(@course.students).to eq([])
      expect(@course.full?).to eq(false)
      @course.enroll(@student1)
      @course.enroll(@student2)
      @course.enroll(@student3)
      expect(@course.full?).to eq(true)
    end
  end
end