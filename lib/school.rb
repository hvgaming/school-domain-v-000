class School
  attr_reader :school_name, :add_student, :grade
  attr_accessor :roster
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
   end
  def add_student(name, grade)
    @name = name
    @grade = grade
    @roster[grade] ||= [] 
    @roster[grade] << name 
    
  end
   def grade(grades)
    @roster.select do |grade, names|
      if grades == grade
        return names ## research returns vs just names
      end
    end
  end
     # if @roster[grade] == grade
    #   return @roster[grade].values ### <-----this is where i should find all my names
    # end
    # grades.select do |grade|
    #  if @roster[grade] == grade
    #   return name
    #   end
    # end
 
   # i'll find the grade of the student in @roster[grade], so from there, i want to return
  # all the values in that key
     # @roster[grade].keys.each do
    #   return @roster[grade].values
    # end
      ### right now, this is returning every value in my roster and not separating it by grade
    
   
  #call on school_name's grade and return everyone who is in that grade
   def sort
     ##iterate over each hash - for each key you sort, and each value you sort
    @roster.sort.each_with_object({}) do |(grade_key, name_arrays), name| 
      name[grade_key] = name_arrays.sort
      name.sort
    end
  
  end
 end