class Student
    attr_reader :name, :age, :scores, :log_score
    def initialize(background)
        @name = background[:name]
        @age = background[:age]
        @scores = []
    end

    def log_score(score)
        scores << score
    end

    def grade
        scores.sum(0.0) / scores.size
    end
end
