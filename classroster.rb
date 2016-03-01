#method 1
#The first method should return our current list of students, or an empty array if we don't have one yet.

$roster = []

def roster
  $roster
end

puts roster.inspect

#method 2
#The second method should accept data for a new student, create a hash out of the student's information, and add it to a running array of students.

def newStudent firstname, lastname, course
  $roster << {firstname: firstname, lastname: lastname, course: course}
end

#method 3
#A third method should read back our list of students we've created in a specific format, sorted by last name

def readList
  $roster.sorted
  $roster.each {"#{student.lastname}, #{student.firstname} - #{student.course}"}
end

#method 4
#A fourth method should display a message about how many students are in the class

def how_many_students
  number = roster.length
  "There are #{number} students in our class"
end

#method 5
#final method should tell us what information any given student hash has in it.

def readinformation student
  [student[:firstname], student[:lastname], student[:course]]
end