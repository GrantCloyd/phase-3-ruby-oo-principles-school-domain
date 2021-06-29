# code here!

class School
attr_accessor :roster, :name

def initialize(name)
    @name = name
   @roster = {}
end

def add_student(name, grade)
    @roster[grade] ||= [] 
    @roster[grade] << name 
end

def grade(level)
 @roster[level]
end

def sort 
 update = @roster.each {|k,v| v.sort! {|a,b| a <=> b } }
end

end