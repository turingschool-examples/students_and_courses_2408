require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:all) do
  end

  it 'exists' do
    morgan = Student.new({ name: 'Morgan', age: 21 })
    expect(morgan).to be_instance_of(Student)
  end

  describe '#log_score' do
    it 'can log a score' do
      stu = Student.new({ name: 'Stewart', age: 40 })
      stu.log_score(89)
      expect(stu.scores).to eq([89])
    end

    describe '#grade' do
      it 'can return the average grade' do
        stu = Student.new({ name: 'Stewart', age: 40 })
        stu.log_score(89)
        stu.log_score(78)
        expect(stu.grade).to eq(83.5)
      end
    end
  end
end
