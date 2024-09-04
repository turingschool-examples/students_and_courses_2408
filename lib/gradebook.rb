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

    def students_below(threshold)
        students_below_threshold = []
        @courses.each do |course|
        course.students.each do |student|
        students_below_threshold << student if student.grade < threshold
        end
    end
    students_below_threshold
    end 

    # def all_grades
    #     grades_list = {}
    #     @courses.each do |course|
    #         grades_list[course] = 
end
