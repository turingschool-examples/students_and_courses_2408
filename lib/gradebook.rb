class Gradebook
    attr_reader :instructor, :courses, :course, :students
    def initialize(instructor, courses)
        @instructor = instructor
        @courses = []
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
end
