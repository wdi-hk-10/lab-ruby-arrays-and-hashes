require 'pp'

$roster = []

puts $roster.inspect

student1 = {
  first_name: 'Jinny',
  last_name: 'Lee',
  course_name: 'Web Development Immersive'
}

student2 = {
  first_name: 'Carmen',
  last_name: 'Taubman',
  course_name: 'Web Development Immersive'
}


$roster << student1
$roster << student2

puts $roster.inspect

$roster.each { |num| puts "#{num[:last_name]}, #{num[:first_name]} - #{num[:course_name]}" }
# puts "#{student1.first_name}, #{student1.last_name} - #{student1.course_name}}"

puts "There are #{$roster.length} students in our class"

puts student1.keys.inspect

pp $roster

puts :first_na.class
puts :name.inspect