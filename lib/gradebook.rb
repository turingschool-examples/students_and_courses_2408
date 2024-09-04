require 'rspec'
require './lib/course'
require './lib/student'
require 'pry'


class Gradebook
    attr_reader :name,
                :courses

    def initialize(name)
        @name = name
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
        students_below_threshhold = {}
        list_all_students.each do |course, student|
            below_threshhold = student.select do |student|
                student.grade < grade_thresh
            end
            students_below_threshhold[course] = below_threshhold.compact
        end
        students_below_threshhold
    end

end
