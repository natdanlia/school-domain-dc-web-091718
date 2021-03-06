# code here!
# require "pry"
class School
  attr_accessor :name, :roster

  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student(name,grade)
    if @roster.keys.include? grade
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      # binding.pry
      sorted[grade] = students.sort
    end
    sorted
  end
end
