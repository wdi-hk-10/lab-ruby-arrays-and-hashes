require 'pp'

@roster = []

def roster
  @roster
end

def new_student(first, last, course)
    student = {
      firstname: first,
      lastname: last,
      coursename: course
    }
    roster << student
end


def sort_list
  roster.sort_by {|student| student[:lastname]}.each do |student|
    puts "#{student[:lastname]}, #{student[:firstname]} - #{student[:coursename]}"
  end
end


def count_students
  puts "We have #{roster.count} in our course"
end

def student_details
  roster.first.keys.each do |attribute|
    puts "-#{attribute}"
  end
end

new_student("Clark", "Kent", "WDI09")
new_student("Bruce", "Wayne", "WDI10")
sort_list
count_students
student_details

