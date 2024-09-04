class Gradebook
    attr_reader :instructor,
                :courses,
                :list_all_students

    def initialize(instructor)
        @instructor = instructor
        @courses = []
        @list_all_students = {}
    end

    def add_course(course)
        @courses << course
    end

    def list_all_students(course)
        course.each do |course|
            student_names = course.students.mp(&:name)
            @list_all_students[course.name] = student_names
        end
        @list_all_students
        require 'pry'; binding.pry
    end

end
