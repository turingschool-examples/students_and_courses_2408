class Gradebook

    attr_reader :instructor, :courses, :students

    def initialize(instructor, course_info)
        @instructor = instructor
        @courses = course_info = { courses: ["calculus"] }
    end

    def add_course(course)
        @courses << course
    end
end
