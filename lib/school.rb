# code here!

class School

    attr_reader :roster #getter
    
    ROSTER = []
    
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(number)
        @roster[number]
    end

    def sort
        self.roster.reduce({}) do |sorted_roster, (grade, students)
            sorted_roster[grade] = students.sort
            sorted_roster
        end
    end

end
