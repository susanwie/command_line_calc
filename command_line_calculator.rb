puts "\n        Calculator\n\n".upcase

puts "How many numbers do you want to use?"
number = gets.chomp.to_i

values = []
number.times do
    puts "What is this number?"
    values.push (gets.chomp.to_f)
end

puts "1 = Add          2 = Multiply"
puts
puts "3 = Subtract     4 = Divide\n "

puts "What operation do you want to use?"
operation = gets.chomp.to_i

result = 0
results = 1

if operation == 1
  (values).each do |value|
    result = result + value
  end
  puts "Your answer is #{result}!"

elsif operation == 2
  (values).each do |value|
    results = results * value
  end
  puts "Your answer is #{results}!"

elsif operation == 3
  (values).each do |value|
    result = result - value
  end
  puts "Your answer is #{result}!"

elsif operation == 4
  (values).each do |value|
    results = results / value
  end
  puts "Your answer is #{results}!"

else
  puts "Invalid Input"
end

=begin
puts "Welcome to our calculator"

puts "How many numbers do you want to use?"
number = gets.chomp.to_i
  number.times do
=end
