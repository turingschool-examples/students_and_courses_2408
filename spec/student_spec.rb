require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do
    @morgan = Student.new({name: "@Morgan", age: 21})
    @tim = Student.new({name: "@Tim", age: 24})
    @gertrude = Student.new({name: "@Gertrude", age: 19})
  end

  it "exists" do    
    expect(@morgan).to be_instance_of(Student)
    expect(@tim).to be_instance_of(Student)
    expect(@gertrude).to be_instance_of(Student)
  end

  it 'has a name' do
    expect(@morgan.name).to eq("@Morgan")
    expect(@tim.name).to eq("@Tim")
    expect(@gertrude.name).to eq("@Gertrude")
  end


  it 'has an age' do
    expect(@morgan.age).to eq(21)
    expect(@tim.age).to eq(24)
    expect(@gertrude.age).to eq(19)
  end

  it 'has an empty array for scores' do
    expect(@morgan.scores).to eq([])    
    expect(@tim.scores).to eq([])    
    expect(@gertrude.scores).to eq([])    
  end

  it 'can log scores' do
    @morgan.log_score(89)    
    expect(@morgan.scores).to eq([89])
    @morgan.log_score(78)
    expect(@morgan.scores).to eq([89, 78])
    @tim.log_score(68)
    @tim.log_score(92)
    expect(@tim.scores).to eq([68, 92])
    @gertrude.log_score(88)
    @gertrude.log_score(81)
    expect(@gertrude.scores).to eq([88, 81])
  end

  it 'can average student scores' do
    @morgan.log_score(89)
    @morgan.log_score(78)
    expect(@morgan.grade).to eq(83.5)
    @tim.log_score(68)
    @tim.log_score(92)
    expect(@tim.grade).to eq(80)
    @gertrude.log_score(88)
    @gertrude.log_score(81)
    expect(@gertrude.grade).to eq(84.5)
  end 

end
