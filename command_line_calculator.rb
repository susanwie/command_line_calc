puts "Welcome to our calculator!"

puts "How many numbers do you want to use?"
number = gets.chomp.to_i

number.times do
  puts "What is this number?"
  values = gets.chomp
end

operations = ["addition", "subtraction", "multiplication", "division"]

operations do |values|
  puts (values).add
end
