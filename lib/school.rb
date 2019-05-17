require 'pry'

class School

  attr_reader :name, :roster


  def initialize (name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
  # this works as well.
  #   if @roster.has_key?(grade)
  #   @roster[grade] << name
  # else
  #   @roster[grade] = [name]
  #   end
  # end
    roster[grade] ||=[]

    # if roster[grade] already exists leave it alone.
    # if it doesnt set roster[grade] = []

    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end


  def sort
    roster.each do |grade, students|
      students.sort!
    end
  end



end
