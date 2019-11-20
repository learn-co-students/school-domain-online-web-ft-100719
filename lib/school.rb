require 'pry'
class School
attr_accessor :sname, :grd, :student
attr_reader :sname, :grd, :student

def initialize(name)
  @name = "Test School"
  @rost = {}
end
def roster()
  @rost
end
def add_student(student, grd)
  if @rost[grd]==nil
  @rost[grd] = []
  end
  @rost[grd] << student
end
def grade(grd)
  @rost[grd]
end
def sort
  @rost.each do |k, v|
  v.sort!
  end
end
end

