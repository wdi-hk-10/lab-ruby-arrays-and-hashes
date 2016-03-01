require 'pp'

$roster = []

def roster
  $roster
end

def add_student first, last, program
  roster << { first: first, last: last, program: program }
end

def sort_students
  roster.sort_by { |student| student[:last] }.each do |student|
    puts "#{student[:last]}, #{student[:first]} - #{student[:program]}"
  end
end

def roster_size
  puts roster.count
end

def get_student_info
  # students.first.keys.each do |attribute|
  #   puts "- #{attribute}"
  # end

# review in class!

end

add_student 'jon', 'young', 'WDI'
add_student 'jules', 'waite', 'WDI'
add_student 'sean', 'ng', 'WDI'

pp roster

sort_students

roster_size