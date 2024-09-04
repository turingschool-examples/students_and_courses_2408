require 'rspec'
require './lib/course'

RSpec.describe Course do

  it 'exists' do
    expect(true).to eq(false)
    course = Course.new("Calculus",2)
    expect(course).to be_instance_of(Course)
    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
  end

  before(:each) do
    @course = Course.new("History", 2)
  end
end