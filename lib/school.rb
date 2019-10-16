require 'pry'
# code here!
class School
attr_accessor 
attr_reader :name, :roster, :grade
  
  def initialize(name)
    @name=name
    @roster={}
  end

  #Avoided with reader  
  # def roster
  #   @roster={}
  # end
  
  def add_student(student,grade)
    if @roster[grade]
      @roster[grade]<< student
    else
      @roster[grade]=[student]
    end
  end
  
  def grade(grade)
    @grade=@roster[grade]
  end

  
  def sort
      # @roster.reduce({}) do |sorted, (grade,students)| 
      #   sorted[grade]= students.sort
      #   sorted
      # end
    @roster.transform_values{|students| students.sort}
  end

end


  
  ##Original ideas for sort.. before study group
  # def sort
  #   # binding.pry
  #   @roster.sort
  #   @roster.sort_by {|grade,students| 
  #     students.sort_by{|studenta,studentb| studenta<=>studentb}
  #     # .sort_by{|grade,student| student}
  #   }
  # end 