require 'rspec'
require './lib/student'

RSpec.describe Student do
  it "exists" do
    morgan = Student.new({name: "Morgan", age: 21})
    expect(morgan).to be_instance_of(Student)
  end

  it 'has an initial score of an empty array' do
    morgan = Student.new({name: "Morgan", age: 21})
    expect(morgan.scores).to eq([])
  end

  it 'can log scores' do
    morgan = Student.new({name: "Morgan", age: 21})
    morgan.log_score(89)
    morgan.log_score(78)
    expect(morgan.scores).to eq([89, 78])
  end

  it 'can give a grade average' do
    morgan = Student.new({name: "Morgan", age: 21})
    morgan.log_score(89)
    morgan.log_score(78)
    expect(morgan.grade).to eq(83.5)
  end

end

