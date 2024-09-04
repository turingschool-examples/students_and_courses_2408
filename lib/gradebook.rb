class Gradebook
    attr_reader :instructor, :courses
    
    def initialize(instructor)
    @instructor = instructor
    @courses = []
    end

    def add_course(course)
        @courses << course
    end

    def list_all_students
        students_list = {}
        @courses.each do |course|
            students_list[course] = course.students
        end
        students_list
    end
end
