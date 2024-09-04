require 'rspec'
require './lib/student'

RSpec.describe Student do
  it "exists" do
    morgan = Student.new({name: "Morgan", age: 21})
    expect(morgan).to be_instance_of(Student)
  end

  describe '#log_score' do
    it 'can add a score' do
      expect(true).to eq(false)
    end

    it 'can add multiple scores' do
      expect(true).to eq(false)
    end
  end

  describe '#grade' do
    it 'can return a grade with no scores' do
      expect(true).to eq(false)
    end
    it 'can return a grade with a score' do
      expect(true).to eq(false)
    end
    it 'can return a grade with multiple scores to two decimal places' do
      expect(true).to eq(false)
    end
  end
end
