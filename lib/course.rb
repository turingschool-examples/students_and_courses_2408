class Course
attr_reader :name,
            :students,
            :capacity

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @students = []
    end

    

end 
