require 'rspec'
require './lib/gradebook'
require './lib/course'

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
    @course1 = Course.new("History of Magic",5)
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
      expect(true).to eq(false)
    end

    it 'can list all students when there is one' do
      expect(true).to eq(false)
    end

    it 'can list all students when there are multiple' do
      expect(true).to eq(false)
    end
  end

  describe '#students_below' do
    it 'can list all students below the threshold when there are no students' do
      expect(true).to eq(false)
    end

    it 'can list all students below the threshold when there are students but none below the threshold' do
      expect(true).to eq(false)
    end

    it 'can list all students below the threshold when all students are below the threshold' do
      expect(true).to eq(false)
    end

    it 'can list all students below the threshold some students are below the threshold' do
      expect(true).to eq(false)
    end
  end
end