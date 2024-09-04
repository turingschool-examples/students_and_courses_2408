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
end
