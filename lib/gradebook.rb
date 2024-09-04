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

    # def list_all_students
    #     student_hash = {}
    #     @courses.each do |course|
    #         student_hash[course] = course.students
    #         # Alternate way to write the line above to create the hash
    #         # student_hash.store(course, course.students)
    #     end
    #      student_hash
    # end

    def list_all_students #ALTERNATIVE SOLUTION
        @courses.reduce({}) do |student_hash, course|
            student_hash[course] = course.students
            student_hash
        end
    end

    def students_below(grade_average)
        @courses.map do |course|
            course.students.find_all { |student| student.grade <= grade_average}
        end.flatten.uniq
    end
end
