class Student

    attr_reader :name,
                :age
                
    def initialize(student_details = {})
        @name = student_details[:name]
        @age = student_details[:age]
    end

end
