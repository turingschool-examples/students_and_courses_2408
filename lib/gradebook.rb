class Gradebook
  attr_reader :courses, :instructor

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end
end
