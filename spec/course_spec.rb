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

    describe 'enroll' do
        it 'enrolls students if there is capacity in the course' do
        course = Course.new("Calculus", 2)
        student1 = Student.new({name: "Morgan", age: 21})

        expect(course.enroll(student1)).to be true
        expect(course.students).to include(student1)
        end
    end

    describe 'enroll' do
        it 'will say if course if full' do
        course = Course.new("Calculus", 2)
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29})

        course.enroll(student1)
        course.enroll(student2)
        expect(course.full?).to eq (true)
        end
    end
end