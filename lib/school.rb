class School 

    def initialize(student, roster = {})
    @student = student
    @roster = roster
    
    end

    def roster
        @roster
    end
    
    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.map do |key, value|
        @roster[key] = value.sort
        end
        
        @roster
    end

end