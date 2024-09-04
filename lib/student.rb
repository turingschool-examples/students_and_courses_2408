class Student
  attr_reader :name, :age, :scores

  def initialize(student_info)
    @name = student_info[:name]
    @age = student_info[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    average = scores.sum.to_f / scores.size
    format('%.1f', average).to_f
  end
end
