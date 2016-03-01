require 'pp'
# pretty print
pp $roster
# Requirements

# Write five methods:
# The first method should return either our current list of students, or an empty array if we don't have one yet.

$roster = []

def roster
  $roster
end


puts roster.inspect


# The second method should accept data for a new student, create a hash out of
# the student's information, and add it to a running array of students.

# student1 = {
#   first_name: 'John',
#   last_name: 'Doe',
#   course: 'Web Development Immersive'
# }

# student2 = {
#   first_name: 'Jane',
#   last_name: 'Zelda',
#   course: 'User Experience Immersive'
# }

def newstudent firstname, lastname, course
  $roster << {firstname: firstname, lastname: lastname, course: course}
end
puts newstudent 1, 2, 3
# puts newstudent 1,2,3
# roster << student1
# roster << student2

# puts $roster.inspect



# A third method should read back our list of students we've created in a specific format, sorted by last name:

# Doe, John - Web Development Immersive
# Zelda, Jane - User Experience Immersive
# ... etc.

def readlist
  roster.sort
  roster.each {"#{student.lastname}, #{student.firstname} - #{student.course}"}
end

# roster.each do |num|
#   puts "#{num[:last_name]},#{num[:first_name]} - #{num[:course]}"
# end

# A fourth method should display a message about how many students are in the class:
# "There are X students in our class"

def how_many_students
  number = roster.length
  "There are #{number} students in our class"
end
# puts "There are #{roster.length} students in our class"

# And a final method should tell us what information any given student hash has in it. For example:
# - first_name
# - last_name
# - course_name
# etc.

def readinformation student
  [student[:firstname], student [:lastname], student[:course]]
end