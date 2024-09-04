class Student
    attr_reader :name
                :age
                :scores

    def initialize(student)
        # @student_info = student_info
        @name = student[:name]
        @age = student[:age]
        @scores = []
    end

    def age
        @age
    end

    def scores
        @scores
    end

    def log_score(score)
        @scores << score
    end

    def grade
        grade = @scores.sum.to_f / 2
    end

end
