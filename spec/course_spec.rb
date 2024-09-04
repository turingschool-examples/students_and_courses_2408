require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  before(:each) do
    @student1 = Student.new({ name: 'Morgan', age: 21 })
    @student2 = Student.new({ name: 'Jordan', age: 29 })
  end
  it 'exists' do
    course = Course.new('Calculus', 2)
    expect(course).to be_instance_of(Course)
    expect(course.name).to eq('Calculus')
    expect(course.capacity).to eq(2)
    expect(course.students).to eq([])
  end

  describe '#full?' do
    it 'can check capacity' do
      course = Course.new('Calculus', 2)
      expect(course.full?).to eq(false)
      course.enroll(@student1)
      course.enroll(@student2)
      expect(course.full?).to eq(true)
    end
  end

  describe '#enroll' do
    it 'can enroll a student' do
      course = Course.new('Calculus', 2)
      course.enroll(@student1)
      course.enroll(@student2)
      expect(course.students.length).to eq(2)
      expect(course.students.first).to be_instance_of(Student)
      expect(course.students.last).to be_instance_of(Student)
    end
  end
end
