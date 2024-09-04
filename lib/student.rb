class Student
    attr_reader :name,
                :age,
                :student_scores
    def initialize(student_attributes)
        @name = student_attributes[:name]
        @age = student_attributes[:age]
        @student_scores = []
    end

    def log_score(num)
        @student_scores << num
    end
    
    def grade
        return 0 if @student_scores.empty?
        @student_scores.sum.to_f / @student_scores.size
    end



end
