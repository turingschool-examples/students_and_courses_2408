require 'rspec'
require './lib/gradebook'

RSpec.describe Gradebook do 
    before(:each) do 
        @gradebook = Gradebook.new("Nick Teets")
        @course1 = Course.new("Calculus", 2) 
        @course2 = Course.new("Psychology", 5) 
        @student1 = Student.new({name: "Morgan", age: 21})
        @student2 = Student.new({name: "Jordan", age: 29})  
    end

    it 'exists' do 
        expect(@gradebook).to be_instance_of (Gradebook)
    end

    it 'has an instructor' do 
        expect(@gradebook.instructor).to eq ("Nick Teets")
    end

    it "has courses" do 
        expect(@gradebook.courses).to eq ([])
        @gradebook.add_course(@course2)
        expect(@gradebook.courses).not_to eq ([])
        expect(@gradebook.courses).to eq ([@course2])
    end
end