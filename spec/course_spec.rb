require 'rspec'
require './lib/course'
require './lib/student'

course = Course.new("Calculus", 2)

RSpec.describe Course do
    it "exists" do
      course = Course.new("Calculus", 2)
      expect(course).to be_instance_of(Course)
    end

