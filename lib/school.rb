require 'pry'

class School
  attr_accessor :name, :roster


  def initialize(name)
    @name=name
    @roster={} #here I was having a hard time because I simply forgot to make roster an instance variable. I was just creating a local variable.
  end

  def add_student(student_name, grade)
    # @student_name = student_name----> I don't know why I *didn't* have to create an instance variable here.
    # @grade = grade
    @roster[grade]||=[] # our hash to have a key of grade(being passed in) and an empty array.
    @roster[grade]<<student_name #our roster hash with a key of grade is getting the student name shoveled into it.
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
      sorted_students={}
      @roster.each do |grade, students_array|
        sorted_students[grade]=students_array.sort
      end
      sorted_students
    end

end
