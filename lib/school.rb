#require 'pry'
class School
  attr_accessor :sname, :grade, :student
  attr_reader :sname, :grade, :student
  def initialize(sname)
    @sname=sname
    @ros = {}
  end
  def roster()
    @ros
  end
  def add_student(student, grade)
    if @ros[grade]==nil
    @ros[grade] = []
    end
    @ros[grade] << student
  end
  def grade(grade)
    @ros[grade]
  end
  def sort()
    @ros[grade].sort_by {|k, v| v}
    
  end
end
#binding.pry