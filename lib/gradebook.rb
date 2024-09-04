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
end
