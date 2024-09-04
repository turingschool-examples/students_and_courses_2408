class Student
    attr_reader :name,
                :age,
                :scores

    def initialize(student)
        # @student_info = student_info
        @name = student[:name]
        @age = student[:age]
        @scores = []
    end

    def log_score(score)
        @scores << score
    end

    def grade
        grade = @scores.sum / @scores.length.to_f
    end
end
