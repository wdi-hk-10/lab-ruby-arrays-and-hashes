$roster = [
  {
    first_name: 'Rob',
    last_name: 'Fong',
    course_name: 'Web Development Immersive'
  },
  {
    first_name: 'Judah',
    last_name: 'Frankel',
    course_name: 'Web Development Immersive'
  },
  {
    first_name: 'Jules',
    last_name: 'Waite',
    course_name: 'Web Development Immersive'
  },
  {
    first_name: 'Carmen',
    last_name: 'Taubman',
    course_name: 'Web Development Immersive'
  },
  {
    first_name: 'Sean',
    last_name: 'Ng',
    course_name: 'Web Development Immersive'
  },
  {
    first_name: 'Jinny',
    last_name: 'Lee',
    course_name: 'Web Development Immersive'
  },
  {
    first_name: 'Daryl',
    last_name: 'Chu',
    course_name: 'Web Development Immersive'
  },
  {
    first_name: 'Shawn',
    last_name: 'Alwani',
    course_name: 'Web Development Immersive'
  },
  {
    first_name: 'Jon',
    last_name: 'Young',
    course_name: 'Web Development Immersive'
  }
]

# Method 1
def showList
  puts $roster.inspect || []
end

# Method 2
def addStudent firstName, lastName, courseName
  $roster.push({
    first_name: firstName,
    last_name: lastName,
    course_name: courseName
  })
end

addStudent "Stephanie", "Martin", "GA Management"

# Method 3
def readList
  $roster.sort_by{ |hsh| hsh[:last_name] }.each do |student|
    puts "#{student[:last_name]}, #{student[:first_name]} - #{student[:course_name]}"
  end
end

readList

# Method 4
def countClass courseName
  count = $roster.count{|hsh| hsh[:course_name] == courseName}
  if count === 1
    puts "There is #{count} student in #{courseName}."
  else
    puts "There are #{count} students in #{courseName}."
  end
end

countClass "Web Development Immersive"

# Method 5
def listInfo studentName
  studentName.each do |key, value|
    puts "#{key}: #{value}"
  end
end

listInfo $roster[3]
