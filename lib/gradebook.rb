class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    # TODO
  end

  def students_below_threshold(grade_threshold)
    # TODO
  end
end
