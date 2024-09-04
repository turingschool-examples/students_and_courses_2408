class Course

    attr_reader :name, :capacity, :students, :full

    def initialize(attrs)
        @name = attrs[:name]
        @capacity = attrs[:capacity]
        @students = []
        @full = false
    end

    def enroll(student)
        @student << student
    end

    def full?
        @student.size >= @capacity
        if 
            @capacity <= 2
            then
            false
        elsif 
            true
        end
    end
end
