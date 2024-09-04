require './lib/course'
require './lib/student'

Rspec.describe Course do
    it 'exist' do
        course = Course.new("Calculus", 2)

        expect(course.name).to eq("Calculus")
        expect(course.capacity).to eq(2)
        expect(course.students).to eq([])
        expect(course.full?).to eq(false)
    end

    it 'has student objects' do
        course = Course.new("Calculus", 2)
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29})

        expect(course.students).to eq([student1, student2])
        expect(course.enroll).to eq(student1)
        expect(course.enroll).to eq(student2)
    end

    it 'has a full course' do
        course = Course.new("Calculus", 2)
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29})

        expect(course.full?).to eq (true)
    end
end