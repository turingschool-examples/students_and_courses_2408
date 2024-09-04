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

    it 'can give the courses' do
        gradebook = Gradebook.new("Mr. Instructor", ["calculus"])
        expect(gradebook.courses).to eq(["calculus"])
    end

    it 'can add courses' do
        gradebook = Gradebook.new("Mr. Instructor", ["calculus"])
        gradebook.add_course("geometry")
        expect(gradebook.courses).to eq(["calculus", "geometry"])
    end

    it 'can give a list of students' do
        gradebook = Gradebook.new("Mr. Instructor", ["calculus"])
        gradebook.add_course("geometry")
        expect(gradebook.list_of_students.values[0]).to eq(["student1", "student2"])
    end

    it 'can give a list of all students' do
        gradebook = Gradebook.new("Mr. Instructor", ["calculus"])
        gradebook.add_course("geometry")
        expect(gradebook.list_of_students.values).to include(["student1", "student2"], ["student1"])
    end

    it 'can track all grades' do
        gradebook = Gradebook.new("Mr. Instructor", ["calculus"])
        gradebook.add_course("geometry")
        expect(gradebook.all_grades.values).to include([78, 93], [85])
    end

    it 'can track students that are passing' do
        gradebook = Gradebook.new("Mr. Instructor", ["calculus"])
        gradebook.add_course("geometry")
        gradebook.all_grades
        gradebook.students_passing
        expect(gradebook.students_in_range).to eq(2)
    end
end