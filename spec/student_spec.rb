require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do 
    morgan = Student.new({name: "Morgan", age: 21})
  end

  it "exists" do
    expect(morgan).to be_instance_of(Student)
  end

  it "has a name" do
    expect(morgan.name).to eq ("Morgan")
  end

  it "has an age" do
    expect(morgan.age).to eq (21)
  end
end
