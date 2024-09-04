class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_students
    cohort = {}
    @courses.each do |course|
      cohort[course] = course.students
    end
    cohort
  end

end
