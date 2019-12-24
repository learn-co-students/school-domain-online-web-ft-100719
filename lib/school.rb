class School

  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  #THIS ISN'T NEEDED IF I USE AN ATTR_ACCESSOR AT THE TOP OF THE CLAss
  # def roster
  #   @roster
  # end

  # add_student method - it should be able to add a student to the school.

  #AGAIN, SHITTY CODE THAT CAN BE REFACTORED. WHILE MY CODE WORKS, IT'S VERBOSE AND COMPLICATED
  # def add_student(name, grade)
  #   @student_name = name
  #   @student_grade = grade
  #
  #   if @roster.include?(grade) == false
  #     @roster[grade] = []
  #   end
  #   @roster[grade] << name
  # end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  # Grade Method -  it should take an in an argument of grade and return all students in that grade

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name| #SELF.ROSTER WOULD WORK TOO SINCE IT'S CALLING THE ROSTER METHOD ON THE INSTANCE THAT GOT ME HERE. MAP WOULD ALSO WORK SINCE IT RETURNS A NEW WHATEVER
      @roster[grade] = name.sort
    end
  end

  #ANOTHER VERSION THAT WORKS BUT IS MORE VERBOSE THAN MY VERSION
  # def sort
  #   self.roster.reduce ({}) do |sorted_roster, (grade, students)|
  #     sorted_roster[grade] = students.sort
  #     sorted_roster
  #   end
  # end

  def sort
    @roster.transform_values{|students| students.sort}
  end


end
