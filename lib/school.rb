require 'pry'

class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    # if @roster.key?(grade) == false
    #   @roster[grade] = []
    #   @roster[grade] << name
    # else
    #   @roster[grade] << name
    # end
    
    #below is the same code!
    
    @roster[grade] ||= []   #if left side(@roster[grade]) is false, then it is set equal to right side.
                            #otherwise, it is not changed.
    @roster[grade] << name

  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, student|
        student.sort!
    end
  end
  
end