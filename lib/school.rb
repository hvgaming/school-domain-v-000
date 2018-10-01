class School
  attr_accessor :student, :grade, :roster 
  
  def initialize(school_name)
    @roster = {}
  end
  
  def add_student(student, grade)
     into it 
    if roster[grade]== nil 
        roster[grade] = []
        roster[grade] << student
    else
    roster[grade] << student
  end
end

 def grade(grade)
    roster[grade]
 end
  
  def sort
  roster.each do |key, value|
    roster[key] = value
  end
  end 
  
end 