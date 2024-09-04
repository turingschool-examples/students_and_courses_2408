require 'rspec'
require './lib/course'

RSpec.describe Course do

  it 'exists' do
    expect(true).to eq(false)
    course = Course.new("Calculus",2)
    expect(course).to be_instance_of(Course)
    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
  end

  before(:each) do
    @course = Course.new("History", 2)
    @student1 = Student.new({"Wally", 36})
    @student2 = Student.new({"Dahlia", 15})
    @student3 = Student.new({"Brinklee", 10})
  end

  describe '#enroll' do
    it 'can enroll a student in a course' do
      expect(true).to eq(false)
    end

    it 'can enroll multiple students in a course' do
      expect(true).to eq(false)
    end
  end
      
  describe '#full?' do
    it 'returns false when the course is empty' do
      expect(true).to eq(false)
    end

    it 'returns false when the course has students but not to capacity' do
      expect(true).to eq(false)
    end

    it 'returns true when the course is at capacity' do
      expect(true).to eq(false)
    end

    it 'returns true when the course is over capacity' do
      expect(true).to eq(false)
    end
  end
end