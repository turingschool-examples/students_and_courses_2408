class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @insructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  

end
