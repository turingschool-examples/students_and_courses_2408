class Gradebook

    attr_reader :instructor,
                :courses

    def initialize(instructor)
        @instructor = instructor
        @courses = []
    end

    def add_course(course)
        @courses << course
    end

    def list_all_students
        Hash[@courses.map { |course| [course, course.students] } ] 
    end

    def students_below(threshold)
        @courses.flat_map do |course|

        course.students.select { |student| student.grade < threshold }
        end
    end
end
