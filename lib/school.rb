# code here!
class School
  attr_accessor :roster, :student_name, :school_name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
def add_student(student_name, grade)
    if roster[grade]== nil 
        roster[grade] = []
        roster[grade] << student_name
    else
    roster[grade] << student_name
  end
end
  def grade(grade)
    roster[grade]
 end
  
  def sort
  school.sort do |key, value|
   school[key] = value
  end
  end 
end