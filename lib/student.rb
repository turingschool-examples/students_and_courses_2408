class Student
  attr_reader :name, :age, :scores

  def initialize(student_info)
    @name = student_info[:name]
    @age = student_info[:age]
    @scores = []
  end

  def log_scores(score)
    @scores << score
  end

  def grade
    scores.sum.to_f / scores.size
  end
end
