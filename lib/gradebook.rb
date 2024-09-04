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

  def students_below_threshold(threshold)
    student_arr = @courses.map(&:students)
    all_students = student_arr.flatten 
    students_not_passing = all_students.select do |student|
      student.scores.any? && student.grade < threshold
    end
    students_not_passing
  end

end
