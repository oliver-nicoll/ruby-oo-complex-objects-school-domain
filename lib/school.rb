# code here!
class School
    attr_accessor :roster, :student_name, :school_name
    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new{ |h,k| h[k] = []}
    end

    def add_student(student_name, grade)
        @roster[grade] << student_name
    end
    
    def grade(grade)
        @roster[grade]
    end

    def sort
    #     @roster = Hash.new{|grade, name_array| [grade] = (name_array.sort)}
        new_hash = {}  
        @roster.sort.each do |grade, array|
            new_hash[grade] = (array.sort)
    end
    new_hash
end
end

