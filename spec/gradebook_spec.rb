require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

gradebook = Gradebook.new("Mr. Instructor", ["calculus"])

RSpec.describe Gradebook do
    it "exists" do
      gradebook = Gradebook.new("Mr. Instructor", ["calculus"])
      expect(gradebook).to be_instance_of(Gradebook)
    end

    it 'can give the instructor' do
        gradebook = Gradebook.new("Mr. Instructor", ["calculus"])
        expect(gradebook.instructor).to eq("Mr. Instructor")
    end
end