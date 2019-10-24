class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    sorted = {}
    roster.each do |key, value|
      sorted[key] = value.sort
    end
    sorted
  end
end



    # if !roster[grade]
    #   roster[grade] = []
    # end
    # https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Operators
    # learned can ignore all that if stuff and just use the shorthand ||= instead