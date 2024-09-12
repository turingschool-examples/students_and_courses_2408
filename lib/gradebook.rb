class Gradebook
    attr_reader :instructor, :courses, :course, :students
    def initialize(instructor, courses)
        @instructor = instructor
        @courses = []
        @grade_level = []
    end

    def add_course(course)
        courses << course
        return courses
    end

    def list_all_students
        result = {}
        @courses.each do |course|
            result[course.name.to_sym] = course.students
        end
        result
    end

    def students_below(threshold)
        below_threshold = []
        @courses.each do |course|
          course.students.each do |student|
            if student.grade < threshold
              below_threshold << student 
            end
          end
        end
        below_threshold
    end
end
