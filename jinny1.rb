#1. Return either our current list of students, or an empty array if we don't have one yet.
$roster=[]
def roster
  $roster
end
#2. Accept data for a new student, create a hash out of the student's information, and add it to a running array of students.
def newstudent firstname, lastname, course
  $roster << {firstname: firstname, lastname: lastname, course: course}
end
#3. Read back our list of students we've created in a specific format, sorted by last name:
def readlist
  roster.sort
  roster.each {"#{student.lastname}, #{student.firstname} - #{student.course}"}
end
#4. Display a message about how many students are in the class:
def how_many_students
  number = roster.length
  "There are #{number} students in our class"
end
#5. Tell us what information any given student hash has in it.
def readinformation student
  [student[:firstname], student[:lastname], student[:course]]
end