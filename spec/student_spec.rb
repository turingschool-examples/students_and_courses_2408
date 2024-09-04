require 'rspec'
require './lib/student'

RSpec.describe Student do
  it "exists" do
    morgan = Student.new({name: "Morgan", age: 21})
    expect(morgan).to be_instance_of(Student)
  end

  describe '.log_scores' do
    it "logs students scores" do
    morgan = Student.new({name: "Morgan", age: 21})

    morgan.log_score(89)
    morgan.log_score(78)
  end
end
end
