require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do
    @morgan = Student.new({name: "Morgan", age: 21})
  
  end
  
  it "exists" do
    expect(@morgan).to be_instance_of(Student)
  end

  it 'Has an empty Array for scores and log them' do

    expect(@morgan.student_scores).to eq([])

    @morgan.log_score(89)
    expect(@morgan.student_scores).to include(89)
    
    @morgan.log_score(78)
    expect(@morgan.student_scores).to include(78)
  end

  it "Calculate the Average of the Grades"do
  
    @morgan.log_score(89)
    @morgan.log_score(78)
    expect(@morgan.grade).to eq(83.5)
  end

  


end
