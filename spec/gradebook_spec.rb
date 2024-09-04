require './lib/gradebook.rb'
require './lib/course.rb'

Rspec.describe Gradebook do
    it 'exist' do
        gradebook = Gradebook.new
        course1 = Course1.new("Programming")
        course2 = Course2.new("English")
        
        courses = [course1, course2]

        expect(gradebook.instructor).to eq("Theodore")
        expect(gradebook.courses).to eq(2)
    end

    it 'can add courses' do
        gradebook = Gradebook.new
        course1 = Course1.new("Programming")
        course2 = Course2.new("English")

        expect(gradebook.add_courses).to eq(3)
    end

    it 'list all students attending' do
        gradebook = Gradebook.new
        course1 = Course1.new("Programming")
        course2 = Course2.new("English")

        courses = [course1, course2]

        student1 = Student.new({name: "Morgan", course: "Programming"})
        student2 = Student.new({name: "Jordan", course: "English"})
        student3 = Student.new({name: "Justinian" course: "Programming"})

        student = {student1, student2, student3}

        expect(gradebook.list_all_students).to eq({student})
    end
end