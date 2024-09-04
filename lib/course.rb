class Course
attr_reader :name,
            :students,
            :capacity

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @students = []
    end

    def full?
        @students.count == capacity
    end


    def enroll(student)
        @students << student unless full?
   end

end 
