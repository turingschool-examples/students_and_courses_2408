class Gradebook

    attr_reader :instructor, :courses, :students

    def initialize(instructor, courses)
        @instructor = instructor
        @courses = courses
    end

    def add_course(course)
        @courses << course
    end
end
