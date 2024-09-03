require 'rspec'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe do
  describe 'Iteration 1' do
     before(:each) do
      @student = Student.new({name: "Morgan", age: 21})
    end

     it "1. exists and has attributes" do
      expect(Student).to respond_to(:new).with(1).argument
      expect(@student).to be_an_instance_of Student

      expect(@student).to respond_to(:name).with(0).argument
      expect(@student).to respond_to(:age).with(0).argument
      expect(@student.name).to eq("Morgan")
      expect(@student.age).to eq(21)
    end

    it "2. #scores" do
      expect(@student).to respond_to(:scores).with(0).argument
      expect(@student.scores).to eq([])
    end

    it "3. #log_score" do
      expect(@student).to respond_to(:log_score).with(1).argument
      @student.log_score(89)
      @student.log_score(78)
      expect(@student.scores).to eq([89, 78])
    end

    it "4. #grade" do
      expect(@student).to respond_to(:grade).with(0).argument
      @student.log_score(89)
      @student.log_score(78)
      expect(@student.grade).to eq(83.5) #Average of all the scores
    end
  end
  describe 'Iteration 2' do
    before(:each) do
      @course = Course.new("Calculus", 2)
    end

    it "5. exists and has attributes" do
      expect(Course).to respond_to(:new).with(2).argument
      expect(@course).to be_an_instance_of Course

      expect(@course).to respond_to(:name).with(0).argument
      expect(@course).to respond_to(:capacity).with(0).argument
      expect(@course.name).to eq("Calculus")
      expect(@course.capacity).to eq(2)
    end

    it "6. #students" do
      expect(@course).to respond_to(:students).with(0).argument
      expect(@course.students).to eq([])
    end

    it "7. #full?" do
      expect(@course).to respond_to(:full?).with(0).argument
      expect(@course.full?).to eq(false)
    end

    it "8. #enroll" do
      expect(@course).to respond_to(:enroll).with(1).argument
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      @course.enroll(student1)
      @course.enroll(student2)

      expect(@course.students).to eq([student1, student2])
      expect(@course.full?).to eq(true)
    end
  end
  describe 'Iteration 3' do
    before(:each) do
      @gradebook = Gradebook.new("Professor T")
      @course1 = Course.new("Calculus", 2)
      @course2 = Course.new("Quantum Physics", 4)
      @student1 = Student.new({name: "Morgan", age: 21})
      @student2 = Student.new({name: "Jordan", age: 29})
      @student3 = Student.new({name: "Xavier", age: 19})
    end

    it "9. exists and has attributes" do
      expect(Gradebook).to respond_to(:new).with(1).argument
      expect(@gradebook).to be_an_instance_of Gradebook
      expect(@gradebook).to respond_to(:instructor).with(0).argument
      expect(@gradebook.instructor).to eq("Professor T")
    end

    it "10. #courses" do
      expect(@gradebook).to respond_to(:courses).with(0).argument
      expect(@gradebook.courses).to eq([])
      expect(@gradebook).to respond_to(:add_course).with(1).argument
      @gradebook.add_course(@course1)
      @gradebook.add_course(@course2)
      expect(@gradebook.courses).to eq([@course1, @course2])
    end

    it "11. #list_all_students" do
      @gradebook.add_course(@course1)
      @gradebook.add_course(@course2)

      @course1.enroll(@student1)
      @course1.enroll(@student3)
      @course2.enroll(@student2)

      expected = {
        @course1 => [@student1, @student3],
        @course2 => [@student2]
      }

      expect(@gradebook).to respond_to(:list_all_students).with(0).argument
      expect(@gradebook.list_all_students).to eq(expected)
    end

    it "12. #students_below_threshold" do
      @gradebook.add_course(@course1)
      @gradebook.add_course(@course2)

      @course1.enroll(@student1)
      @course1.enroll(@student3)
      @course2.enroll(@student2)

      @student1.log_score(89)
      @student2.log_score(80)
      @student3.log_score(67)

      expect(@gradebook).to respond_to(:students_below).with(1).argument
      expect(@gradebook.students_below(80)).to eq([@student3])
      expect(@gradebook.students_below(89)).to eq([@student3, @student2])
      expect(@gradebook.students_below(100)).to eq([@student1, @student3, @student2])
    end
  end

  describe 'Iteration 4' do
    before(:each) do
      @gradebook = Gradebook.new("Professor T")
      @course1 = Course.new("Calculus", 2)
      @course2 = Course.new("Quantum Physics", 4)
      @student1 = Student.new({name: "Morgan", age: 21})
      @student2 = Student.new({name: "Jordan", age: 29})
      @student3 = Student.new({name: "Xavier", age: 19})
    end

    it "13. #all_grades" do
      @gradebook.add_course(@course1)
      @gradebook.add_course(@course2)

      @course1.enroll(@student1)
      @course1.enroll(@student3)
      @course2.enroll(@student2)

      @student1.log_score(89)
      @student2.log_score(80)
      @student3.log_score(67)

      expected = {
        @course1 => [89, 67],
        @course2 => [80]
      }

      expect(@gradebook).to respond_to(:all_grades).with(0).argument
      expect(@gradebook.all_grades).to eq expected
    end

    it "14. #students_in_range" do
      @gradebook.add_course(@course1)
      @gradebook.add_course(@course2)

      @course1.enroll(@student1)
      @course1.enroll(@student3)
      @course2.enroll(@student2)

      @student1.log_score(89)
      @student2.log_score(80)
      @student3.log_score(67)

      expect(@gradebook).to respond_to(:students_in_range).with(2).argument
      expect(@gradebook.students_in_range(60, 90)).to eq([@student1, @student3, @student2])
      expect(@gradebook.students_in_range(60, 79)).to eq([@student3])
      expect(@gradebook.students_in_range(70, 90)).to eq([@student1, @student2])
    end
  end
end