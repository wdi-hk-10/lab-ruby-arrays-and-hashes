require 'pp'
puts "Hello World"

@aroster = ["Carmen Happy", "Ginny Journall", "Daryl Toilet", "Sean Ratemyplate", "Shawn Spotme", "Jon Ink", "Jules Hopkong", "Judah Dominium"]

@broster = [
  {
    first_name: 'Jules',
    last_name: 'Hopkong',
    course_name: 'WDI10'
  },
  {
    first_name: 'Jon',
    last_name: 'Ink',
    course_name: 'WDI10'
  },
  {
    first_name: 'Daryl',
    last_name: 'Toilet',
    course_name: 'WDI10'
  },
]

# The first method should return either our current list of students, or an empty array if we don't have one yet.

def students
  p @broster # p is puts and inspect combined
end

# students

def students
  @broster.each do |obj|
    puts obj.values.inspect
  end
end

# students


# The second method should accept data for a new student, create a hash out of the student's information, and add it to a running array of students.

def new_student(student)
  student = {
    first_name: first_name,
    last_name: last_name,
    course_name: course_name
  }
  @broster.push student
  puts @broster.inspect
end

# new_student("Rob Quizmaster ww")


# A third method should read back our list of students we've created in a specific format, sorted by last name:
# Doe, John - Web Development Immersive
# Zelda, Jane - User Experience Immersive
# ... etc.

def read_list
  @aroster.sort_by! { |obj| @aroster.last_name }
  puts @aroster
end

# read_list


# A fourth method should display a message about how many students are in the class:
# "There are X students in our class"

def count_students
 puts "There are #{@aroster.count} students in our class" # can also use .length or .size
end

def count_students
 puts "There are #{@broster.count} students in our class"
end

# count_students


# And a final method should tell us what information any given student hash has in it. For example:
# - first_name
# - course_name
# etc.

def student_details
  students.first.keys.each do |attribute|
    puts "- #{attribute}"
  end
end

student_details
