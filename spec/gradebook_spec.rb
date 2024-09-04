require 'pry'
require 'rspec'
require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
  before(:each) do
    @student1 = Student.new({ name: 'Morgan', age: 21 })
    @student2 = Student.new({ name: 'Jordan', age: 30 })
    @student3 = Student.new({ name: 'Bruce', age: 33 })
    @student4 = Student.new({ name: 'Ranger', age: 36 })
    @student5 = Student.new({ name: 'Tuesday', age: 45 })
    @student6 = Student.new({ name: 'Zora', age: 32 })
    @student7 = Student.new({ name: 'Smokey', age: 34 })
    @student8 = Student.new({ name: 'Soda', age: 31 })
    @student9 = Student.new({ name: 'Kimmy', age: 29 })
    @course1 = Course.new('Calculus', 2)
    @course2 = Course.new('Underwater Basket Weaving', 5)
    @course3 = Course.new('Offensive Driving 101', 9)
  end

  describe '#add_course' do
    it 'can add course' do
      book1 = Gradebook.new('Mr. Jose')
      @course1.enroll(@student1)
      @course1.enroll(@student2)
      @course2.enroll(@student2)
      book1.add_course(@course1)
      expect(book1.courses.first.name).to eq('Calculus')

      binding.pry
    end
  end

  describe 'list_all_students' do
  end

  describe 'students_below_threshold' do
  end
end
