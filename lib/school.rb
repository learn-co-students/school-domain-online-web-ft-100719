class School
  
  def initialize(school_name)
    @school_name = school_name 
    @roster = {}
  end 
  
  def roster
    @roster
  end 
  
  # add_student method - it should be able to add a student to the school.
  
  def add_student(name, grade)
    @student_name = name
    @student_grade = grade
    
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end 
  
  # Grade Method -  it should take an in an argument of grade and return all students in that grade
  
  def grade(grade) 
    @roster[grade]
  end 
  
  def sort 
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end

end 