class School
  attr_accessor :roster
  attr_reader :name
  def initialize(name)
    @name = name
    self.roster = {}
  end
  def add_student(name, grade)
    if self.roster.has_key?( grade )
      self.roster[grade] << name
    else
      self.roster[grade] = [name]
    end
  end
  def grade(grade)
    self.roster[grade]
  end
  def sort
    self.roster.reduce({}) do |new_roster, (grade, students)|
      new_roster[grade] = students.sort
      new_roster
    end
  end
end
