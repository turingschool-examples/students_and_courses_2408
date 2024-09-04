require 'rspec'
require './lib/student'

RSpec.describe Student do
  it "exists - Confirms class initializes and student info is returned" do
    student = Student.new({name: "Morgan", age: 21})
    expect(student).to be_instance_of(Student)
    expect(student.name).to eq("Morgan")
    expect(student.age).to eq(21)
    expect(student.scores).to eq([])
  end

  it "logs scores in the array" do
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)
    expect(student.scores).to eq([89, 78])
  end

  it 'gets the student grade from scores' do
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)
    # require 'pry'; binding.pry
    # student.grade(student.scores)
    expect(student.grade).to eq(83.5)
  end

end
