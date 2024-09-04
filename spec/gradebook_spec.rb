require './lib/gradebook'

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
end