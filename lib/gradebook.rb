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
        student_list = @courses.group_by do |course|
            course.students
        end
        student_list.invert
    end
end
