class Student
    attr_reader :name,
                :age,
                :scores

    def initialize(info)
        @name = info[:name]
        @age = info[:age]
        @scores = []
    end

    def log_score(score)
        @scores << score
    end        
   
   
    def grade
        return 0 if scores.empty?  
        scores.sum.to_f / scores.size

    end
end