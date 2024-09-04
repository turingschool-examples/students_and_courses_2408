class Course
  attr_reader :name, :capacity, :students

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end

  def full?
    @students.size >= @capacity
  end

  def enroll(student)
    if full?
      "Sorry. No space"
    else
      @students << student
    end
  end

end
