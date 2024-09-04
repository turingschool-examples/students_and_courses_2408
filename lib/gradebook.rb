require 'rspec'
require './lib/course'
require './lib/student'
require 'pry'


class Gradebook
    attr_reader :instructor,
                :courses

    def initialize(name)
        @instructor = name
        @courses = []
    end

    def add_course(course)
        @courses << course
    end

    def list_all_students
        students_hash = {}
        @courses.each do |course|
          students_hash[course] = course.students
        end
        students_hash
    end

    def students_below(grade_thresh)
        students_below_threshhold = []
        list_all_students.each do |course, student|
            student.each do |student|
                if student.grade < grade_thresh
                    students_below_threshhold << student
                end
            end
        end
        students_below_threshhold
    end

    def all_grades
        grades = {}
        @courses.each do |course|
            grades[course] = course.students.map do |student|
                student.grade
            end
        end
        grades
    end

    def students_in_range(val1, val2)
        students_range = []
        list_all_students.each do |course, students|
            students.each do |student|
                if student.grade >= val1 && student.grade <= val2
                    students_range << student
                end
            end
        end
        students_range
    end

end
