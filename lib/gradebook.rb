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

  # method from video:
  # def all_grades
  #   student_hash = {}
  #   @courses.each do |course|
  #     grade_array = []
  #     course.students.each do |student|
  #       grade_array << student.grade
  #     end
  #   end
  # end

  def all_grades
    grades = {}
    @courses.each do |course|
      grades[course] = course.students.map(&:scores).flatten    
    end    
    grades
  end

  def students_below_threshold(threshold)
    #rewrite to be more readable
    #result = @courses.map do |course|
    #   course.students.find_all { |student| student.grade < threshold }
    #end.flatten.uniq
    #flat_map (!!!)
    student_arr = @courses.map(&:students)
    all_students = student_arr.flatten 
    students_not_passing = all_students.select do |student|
      student.scores.any? && student.grade < threshold
    end
    students_not_passing
  end

  def students_in_range(min, max)
    @courses.flat_map do |course|
      course.students.find_all do |student|
        student.grade >= min && student.grade < max
      end
    end.uniq
  
  end

end
