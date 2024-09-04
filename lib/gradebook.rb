class Gradebook
    attr_reader :instructor, :courses, :list_all_students
    def initialize(instructor)
        @instructor = instructor
        @courses = []
        @list_all_students = {}
    end

    def add_course(course)
        @courses << course
    end

    def add_student(student, course)
       if @list_all_students.has_key?(course)
            if @list_all_students[course].is_a?(Array)
             @list_all_students[course] << student
            else
             @list_all_students[course] = [@list_all_students[course], student]
            end
        else
            @list_all_students[course] = student
        end
    end

    def students_below(threshhold)
        @list_all_students.values.flatten.select { |student| student.grade < threshhold}
    end
end
