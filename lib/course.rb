class Course

    attr_reader :class_name,
                :size,
                :capacity,
                :students


    def initialize(class_name, size)
        @class_name = class_name
        @size = size
        @capacity = 2
        @students = []
    end

    def full?
        @students.count >= @capacity
    end

    def enroll(student)
        @students << student
    end
end

