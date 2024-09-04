require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do
    @morgan = Student.new({name: "Morgan", age: 21})
    @steve = Student.new({name: "Steve", age: 22})
  end
  describe '#initialize' do
    it "exists" do
      expect(@morgan).to be_instance_of(Student)
    end

    it 'has a name' do
      expect(@morgan.name).to eq("Morgan")
    end

    it 'has a different name' do
      expect(@steve.name).to eq("Steve")
    end

    it 'has an age' do
      expect(@morgan.age).to eq(21)
    end

    it 'has a different age' do
      expect(@steve.age).to eq(22)
    end

    it 'can have scores' do
      expect(@morgan.scores).to eq([])
      expect(@steve.scores).to eq([])
    end
  end

  describe '#log_score' do
    it 'can modify students.scores' do
      @morgan.log_score(88)
      expect(@morgan.scores).to eq([88])
      expect(@steve.scores).to eq([])
      @morgan.log_score(78)
      expect(@morgan.scores).to eq([88, 78])
    end
  end

  describe '#grade' do
    it "can give the grade of a student's scores" do ##score.sum(0.0) / score.size
      @morgan.log_score(88)
      @morgan.log_score(78)
      expect(@morgan.grade).to eq(83.5)
      @steve.log_score(85)
      @steve.log_score(67)
      expect(@morgan.grade).to eq(83.5)
    end
  end
end
