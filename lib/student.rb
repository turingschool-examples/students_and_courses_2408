class Student

    attr_reader :name, :age
    attr_accessor :scores, :grade

    def initialize (student_info)
        @name = student_info[:name]
        @age = student_info[:age]
        @scores = []
    end

    def log_score(score)
        @scores << score
    end

    def grade
       ((@scores.sum).to_f / 2).round(1)
    end
end
