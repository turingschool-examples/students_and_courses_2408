require 'rspec'
require './lib/student'

RSpec.describe Student do

  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end

  describe '#initialze' do
    it "exists" do
      expect(@student).to be_instance_of(Student)
    end

    it 'has a name' do
      expect(@student.name).to eq("Morgan")
    end

    it 'has an age' do
      expect(@student.age).to eq(21)
    end
  end

  describe '#scores' do

  it 'starts with an empty array of scores' do
    expect(@student.scores).to eq([])
  end

    it 'can add a score' do
      @student.log_score(89)

      expect(@student.scores).to eq([89])
    end

    it 'can add multiple scores' do
      @student.log_score(89)
      @student.log_score(78)

      expect(@student.scores).to eq([89, 78])
    end

    it 'averages all scores to determine a students grade' do
      @student.log_score(89)
      @student.log_score(78)

      expect(@student.grade).to eq(83.5)
    end

  end
end
