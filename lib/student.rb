class Student
  attr_reader :scores

  def initialize(student_data)
    @student_data = student_data
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def name
    @student_data[:name]
  end

  def age
    @student_data[:age]
  end

  def grade
    if @scores.length > 0
      (@scores.sum.to_f / @scores.length.to_f)
    else
      nil
    end
  end
end
