require 'rspec'
require './lib/course'
require './lib/student'
require 'pry'

RSpec.describe Course do
    before(:each) do
        @course = Course.new("Calculus", 2) 
        @student1 = Student.new({name: "Morgan", age: 21})
        @student2 = Student.new({name: "Jordan", age: 29})
    end

    describe '#initialize' do
        it 'can be created' do
            expect(@course).to be_instance_of(Course)
        end

        it 'can have a capacity' do
            expect(@course.capacity).to eq(2)
        end

        it 'can have students' do
            expect(@course.students).to eq([])
        end
    end

    describe '#enroll' do
        it 'can enroll students' do
            expect(@course.students).to eq([])
            @course.enroll(@student1)
            expect(@course.students.count).to eq(1)
            @course.enroll(@student2)
            expect(@course.students.count).to eq(2)
        end
    end

    describe '#full?' do
        it 'can determine if it is full' do
            expect(@course.full?).to eq(false)
        end

        it 'can determine if the class is full' do
            @course.enroll(@student1)
            expect(@course.full?).to eq(false)
            @course.enroll(@student2)
            expect(@course.full?).to eq(true)
        end
    end
  
