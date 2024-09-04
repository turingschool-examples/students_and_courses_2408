class Gradebook
  attr_reader :courses, :instructor

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end
end
