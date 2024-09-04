require './spec/spec_helper'

RSpec describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new("Prof Grant")
    @gradebook2 = Gradebook.new("Prof Cauliflower")
    @course1 = Course.new("Calculus", 2)
    @course2 = Course.new("Biology", 4)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29}) 
    @student3 = Student.new({name: "Ron", age: 54})
  end

  it 'exists' do
    expect(@gradebook).to be_instance_of(Gradebook)
    expect(@gradebook2).to be_instance_of(Gradebook)
  end

  it 'starts without courses' do
    expect(@gradebook.courses).to eq([])
  end

  it 'knows what students are in courses'
    expect(@gradebook.courses).to eq {"Calculus" => ["Ron", "Morgan"]}
    expect(@gradebook2.courses).to eq{"Biology" => ["Morgan", "Jordan", "Ron"]}
  end
  
  it 'knows students who are not passing' do
    #students with score less than 70 = below threshold
  end
end