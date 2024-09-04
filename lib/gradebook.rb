class Gradebook

    attr_reader :instructor, :courses, :students

    def initialize(instructor, courses)
        @instructor = instructor
        @courses = courses
    end

    def add_course(course)
        @courses << course
    end

    def list_of_students
        students = { 
                     calculus: ["student1", "student2"],
                     geometry: ["student1"]
                    }
    end
end

