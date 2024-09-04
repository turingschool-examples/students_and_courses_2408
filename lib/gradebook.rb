class Gradebook

attr_reader :instructor,
            :courses

    def initialize(instructor)
        @instructor =instructor
        @courses = []
    end

    def list_all_students
        student_list = {}
        @courses.each do |course|
            student_list[course] = course.students
        end
        student_list
    end

    def add_course(course)
        @courses << course
      end

    def student_below(threshold)
        all_students = []
        @courses.each do |course| 
            students_in_course = course.students
            students_in_course.each do |student|
                if student.grade < threshold
                    all_students << student
                end
            end
        end
        all_students
    end
end
