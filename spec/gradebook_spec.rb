require 'rspec'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do

    it 'exists' do
        gradebook1 = Gradebook.new('mr google')
        expect(gradebook1).to be_instance_of(Gradebook)
        expect(gradebook1.courses).to eq []
    end
    it 'can have courses' do
        gradebook1 = Gradebook.new('mr google')
        course1 = Course.new("Calculus", 2)  
        add_course(course1)
