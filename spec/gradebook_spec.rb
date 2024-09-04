require './spec/spec_helper'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new("Prof Grant")
    @gradebook2 = Gradebook.new("Prof Cauliflower")
    @course1 = Course.new("Calculus", 2)
    @course2 = Course.new("Biology", 4)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29}) 
    @student3 = Student.new({name: "Ron", age: 54})
    @course1.enroll(@student3)
    @course1.enroll(@student1)
    @course2.enroll(@student1)
    @course2.enroll(@student2)
    @course2.enroll(@student3)
    
  end

  it 'exists' do
    expect(@gradebook).to be_instance_of(Gradebook)
    expect(@gradebook2).to be_instance_of(Gradebook)
  end

  it 'starts without courses' do
    expect(@gradebook.courses).to eq([])
  end

  it 'can add courses' do    
    @gradebook.add_course(@course1)
    expect(@gradebook.courses).to eq([@course1])
    @gradebook.add_course(@course2)
    expect(@gradebook.courses).to eq([@course1, @course2])
  end

  it 'knows what students are in courses' do
    @gradebook.add_course(@course1)
    @gradebook.add_course(@course2)
    cohort = {
      @course1 => [@student3, @student1],
      @course2 => [@student1, @student2, @student3]
    }
    expect(@gradebook.list_students).to eq(cohort)
  end
  
  it 'knows students who are not passing' do
    @gradebook.add_course(@course1)
    @gradebook.add_course(@course2)
    @student1.log_score(94)
    @student2.log_score(67)
    @student3.log_score(74)

    expect(@gradebook.students_below_threshold(70)).to eq([@student2])
  end

  it 'knows all grades for all courses' do
    @gradebook.add_course(@course1)
    @gradebook.add_course(@course2)
    @student1.log_score(94)
    @student2.log_score(67)
    @student3.log_score(74)

    final_grades = {
      @course1 => [74, 94],      
      @course2 => [94, 67, 74]
    }
    expect(@gradebook.all_grades).to eq(final_grades)
  end

  xit 'knows students in a given range' do
    # make test for a min/max grade range
  end

end