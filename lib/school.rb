require 'pry'

class School 
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name 
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end
  # def roster 
  #   @roster 
  # end

  def sort
    roster.each do |grade, students|
      students.sort!
    end
  end
end