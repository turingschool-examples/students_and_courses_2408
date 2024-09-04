class Course

    attr_reader :name,
                :capacity
                :students

    attr_writer :students

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
    end

    def students
        @students = []
    end
end
