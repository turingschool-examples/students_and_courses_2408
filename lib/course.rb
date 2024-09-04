class Course
    attr_reader :name
                :capacity
                :students

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @students = []
    end

    def capacity
        @capacity
    end

    def students
        @students
    end

    def full?
        if @capacity == @students.count
            return true
        else
            return false
        end
    end
    
    def enroll(student)
        @students << student
    end

end
