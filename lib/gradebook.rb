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
        student_list = @courses.group_by do |course|
            course.students
        end
        student_list.invert
    end

    def students_below (threshold)
#I'm able to get grades with gradebook.courses[0].students[0].grade
       
         student_list = @courses.group_by do |course|
            course.students.find_all do |student|
                student.grade < threshold
            end
         end

         student_list.compact
    #This puts the students below the threshold, but not with the course name
    end


    
    def all_grades
        all_grades = @courses.group_by do |course|
            course.students.map do |student|
                student.grade
            end
           
        end
        all_grades.invert
    end

    def students_in_range(min,max)
        students_in_range = @courses.map do |course|
            course.students.find_all do |student|
                student.grade > min && student.grade < max
            end
        end
        students_in_range.compact
    end
end
