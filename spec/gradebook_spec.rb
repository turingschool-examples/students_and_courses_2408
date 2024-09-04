require 'rspec'
require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do

  it 'exists' do
    gradebook1 = Gradebook.new("Dumbledore")
    expect(gradebook1).to be_instance_of(Gradebook)
    expect(gradebook1.courses).to eq([])
    expect(gradebook1.instructor).to eq("Dumbledore")
  end

  before(:each) do
    @gradebook1 = Gradebook.new("Snape")
    @course1 = Course.new("Potions",2)
    @course2 = Course.new("History of Magic",5)
    @student1 = Student.new({name: "Harry", age: 17})
    @student2 = Student.new({name: "Hermoine",age: 18})
  end

  describe '#add_course' do
    it 'can add a single course' do
      expect(@gradebook1.courses).to eq([])
      @gradebook1.add_course(@course1)
      expect(@gradebook1.courses).to eq([@course1])
    end

    it 'can add multiple courses' do
      expect(@gradebook1.courses).to eq([])
      @gradebook1.add_course(@course1)
      @gradebook1.add_course(@course2)
      expect(@gradebook1.courses).to eq([@course1, @course2])
    end
  end

  describe '#list_all_students' do
    it 'can list all students when there are none' do
      @gradebook1.add_course(@course1)
      expect(@gradebook1.list_all_students).to eq({@course1=>[]})
    end

    it 'can list all students when there is one' do
      @gradebook1.add_course(@course1)
      expect(@gradebook1.list_all_students).to eq({@course1=>[]})
      @course1.enroll(@student1)
      expect(@gradebook1.list_all_students).to eq({@course1=>[@student1]})
    end

    it 'can list all students when there are multiple' do
      @gradebook1.add_course(@course1)
      expect(@gradebook1.list_all_students).to eq({@course1=>[]})
      @course1.enroll(@student1)
      @course1.enroll(@student2)
      expect(@gradebook1.list_all_students).to eq({@course1=>[@student1,@student2]})
    end

    it 'can list all students when there are multiple courses' do
      @gradebook1.add_course(@course1)
      @gradebook1.add_course(@course2)
      @course1.enroll(@student1)
      @course2.enroll(@student2)
      expect(@gradebook1.list_all_students).to eq({@course1=>[@student1], @course2=>[@student2]})
    end
  end

  describe '#students_below' do
    it 'can list all students below the threshold when there are no students in a single course' do
      expect(true).to eq(false)
    end

    it 'can list all students below the threshold when there are students but none below the threshold in a single course' do
      expect(true).to eq(false)
    end

    it 'can list all students below the threshold when all students are below the threshold in a single course' do
      expect(true).to eq(false)
    end

    it 'can list all students below the threshold some students are below the threshold in a single course' do
      expect(true).to eq(false)
    end

    it 'can list all students below the threshold some students are below the threshold in a multiple courses' do
      expect(true).to eq(false)
    end

    it 'can list all students below the threshold some students are below the threshold in a multiple courses with the same student' do
      expect(true).to eq(false)
    end
  end
end