require 'rspec'
require './lib/student'

RSpec.describe Student do
  it "exists" do
    morgan = Student.new({name: "Morgan", age: 21})
    expect(morgan).to be_instance_of(Student)
    expect(student.scores).to eq([])
  end

  it 'logs scores'
   morgan = Student.new({name: "Morgan", age: 21})

   expect(student.log_score).to eq([89, 78])
  end

  it 'grades the student scores' do
    morgan = Student.new({name: "Morgan", age: 21})

    expect(student.grade).to eq(83.5)
  end
end