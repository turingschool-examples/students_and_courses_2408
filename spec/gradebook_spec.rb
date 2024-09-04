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

    it
end