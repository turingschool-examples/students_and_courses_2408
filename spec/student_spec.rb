require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do
    @wally = Student.new({name: "Wally", age: 36})
  end

  it "exists" do
    morgan = Student.new({name: "Morgan", age: 21})
    expect(morgan).to be_instance_of(Student)
    expect(morgan.name).to eq("Morgan")
    expect(morgan.age).to eq(21)
    expect(morgan.scores).to eq([])
  end

  describe '#log_score' do
    it 'can add a score' do
      expect(@wally.scores).to eq([])
      @wally.log_score(100)
      expect(@wally.scores).to eq([100])
    end

    it 'can add multiple scores' do
      expect(@wally.scores).to eq([])
      @wally.log_score(100)
      @wally.log_score(99)
      expect(@wally.scores).to eq([100,99])
    end
  end

  describe '#grade' do
    it 'can return a grade with no scores' do
      expect(@wally.grade).to eq(nil)
    end
    it 'can return a grade with a score' do
      expect(@wally.grade).to eq(nil)
      @wally.log_score(100)
      expect(@wally.grade).to eq(100)
    end
    it 'can return a grade with multiple scores' do
      expect(@wally.grade).to eq(nil)
      @wally.log_score(100)
      @wally.log_score(99)
      expect(@wally.grade).to eq(99.5)
    end
  end
end
