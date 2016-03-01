require 'pp'

# The first method should return either our current list of students, or an empty array if we don't have one yet.

$roster = []

def roster
  $roster
end

pp $roster

# The second method should accept data for a new student, create a hash out of the student's information, and add it to a running array of students.

def newstudent firstname, lastname, course
  puts roster << {first_name: firstname, last_name: lastname, course_name: course}
end
newstudent 1, 2, 3

# A third method should read back our list of students we've created in a specific format, sorted by last name:

def list
  roster.sort
  roster.each { "#{student[:last_name]}, #{student[:first_name]} - #{student[:course_name]}"}
end

puts list


# A fourth method should display a message about how many students are in the class:
def how_many_students
  number = roster.length
  puts "There are #{number} students in our class"
end

how_many_students

# And a final method should tell us what information any given student hash has in it. For example:
# def readinformation
#   puts roster.keys.inspect
# end

# readinformation