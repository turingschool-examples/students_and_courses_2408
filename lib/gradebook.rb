class Gradebook

    attr_reader :instructor, :courses, :students, :grades

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

    def all_grades
        grades = {
                    calculus: [78, 93],
                    geometry: [85]
                 }
    end

    def students_passing
       all_grades.values.flatten.select do |grade| 
        grade >= 80 
    end
end

    def students_in_range
        students_passing.count
    end
end


