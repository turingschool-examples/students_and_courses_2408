class Gradebook
    attr_reader :instructor
                :course
                :list_all_students

    def initialize(instructor)
        @instructor = instructor
        @courses = []
        @list_all_students = {}
    end

    def instructor
        @instructor
    end

    def courses
        @courses
    end

    def add_course(course)
        @courses << course
    end

    def list_all_students(course)
    end

end
