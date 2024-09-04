class Course

    attr_reader :name, :capacity, :students

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @students = []
    end

    def full?
        if @students.count >= 2
            true
        else
            false
        end
    end

    def enroll(student)
        @students << student
    end
end
