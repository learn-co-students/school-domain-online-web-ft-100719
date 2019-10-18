class School
  attr_accessor :name, :roster
  
  def initialize(school_name)
    self.name = school_name
    self.roster = {}
  end

  def add_student(name, grade)
    self.roster[grade] = [] if self.roster[grade] == nil
    self.roster[grade] << name
  end
  
  def grade(grade)
    self.roster[grade]
  end
  
  def sort
    self.roster.values.collect{|grade|grade.sort!}
    self.roster
  end
  
end