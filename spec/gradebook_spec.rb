require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
    it 'exists' do
    gradebook = Gradebook.new("Nick Teets")

    expect(gradebook).to be_instance_of(Gradebook)
    expect(gradebook.instructor).to eq("Nick Teets")
    end
   
    describe '.add_course' do
        it "will add course to courses" do
            gradebook = Gradebook.new("Nick Teets")
            course1 = Course.new("Calculus", 2)
            course2 = Course.new("Science", 2)

            expect(gradebook.courses).to be_empty

            gradebook.add_course(course1)
            expect(gradebook.courses).to include(course1)
            expect(gradebook.courses.size).to eq(1)

            gradebook.add_course(course2)
            expect(gradebook.courses).to include(course1, course2)
            expect(gradebook.courses.size).to eq(2)
        end
    end
    
    describe '.list_all_students' do
        it "will list students in a course" do
            gradebook = Gradebook.new("Nick Teets")
            course1 = Course.new("Calculus", 2)
            course2 = Course.new("Science", 2)

            student1 = Student.new({name: "Morgan", age: 21})
            student2 = Student.new({name: "Jordan", age: 29})
            student3 = Student.new({name: "Alice", age: 19})

            course1.enroll(student1)
            course1.enroll(student2)
            course2.enroll(student3)

            gradebook.add_course(course1)
            gradebook.add_course(course2)

            expected_result = { course1 => [student1, student2], course2 => [student3]}

            expect(gradebook.list_all_students).to eq(expected_result)
        end
    end
end