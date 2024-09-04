require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do 
    @morgan = Student.new({name: "Morgan", age: 21})
  end

  it "exists" do
    expect(@morgan).to be_instance_of(Student)
  end

  it "has a name" do
    expect(@morgan.name).to eq ("Morgan")
  end

  it "has an age" do
    expect(@morgan.age).to eq (21)
  end

  it "starts with no scores" do 
    expect(@morgan.scores).to eq ([])
  end

  it "can add scores" do 
    @morgan.log_score(89)
    expect(@morgan.scores).to eq ([89])
    expect(@morgan.scores).not_to eq ([])
    @morgan.log_score(78)
    expect(@morgan.scores).to eq ([89, 78])
    expect(@morgan.scores).not_to eq ([])
  end

  xit "can provide an average score" do 
    @morgan.log_score(89)
    @morgan.log_score(78)
    expect(@morgan.grade).to eq (83.5)
  end
end
