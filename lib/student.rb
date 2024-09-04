class Student

    attr_reader :name. :age, :score

    def initialize(attrs)
        @name = attrs[:name]
        @age = attrs[:age]
        @score = []
    end

    def log_score
        @score << score
    end

    def grade
        @scores.sum.to_f / @scores.size
    end
end
