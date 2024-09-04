class Gradebook
  attr_reader :courses, :instructor

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    @all_students = {}
    @courses.each do |course|
      students_in_course = course.students
      @all_students[course] = students_in_course
    end
    @all_students
  end 

  def students_below(threshold)
    @students_below = []
    @courses.each do |course|
      students_in_course = course.students
      students_in_course.each do |student|
        # require 'pry'; binding.pry
        if student.grade < threshold
          @students_below << student
        end
      end
    end
    @students_below
  end 
end
