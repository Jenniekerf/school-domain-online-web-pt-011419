class School
  
  attr_accessor :roster, :name
  
  def initialize(name)
  @roster = {}
  @name = name
end 

def add_student(student, grade)
  roster[grade] ||= []
  roster[grade] << student
end

def grade(grade)
  roster[grade]
end

def sort
  sorted = {}
  roster.each do |grade, student|
    sorted[grade] = student.sort 
  end
  sorted
end
end