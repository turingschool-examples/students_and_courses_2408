require './lib/course'
require './lib/student'

RSpec.describe Course do
    it 'exists' do
        course = Course.new("Calculus", 2)

        expect(course).to be_instance_of(Course)
        expect(course.name).to eq("Calculus")
        expect(course.capacity).to eq(2)
    end
    
    describe '.full?' do
        it'tells if course is full' do
        course = Course.new("Calculus", 2)

        course.full?
        expect(course.full?).to eq(false)
        end
    end

end