puts "\n        Calculator\n\n".upcase

puts "How many numbers do you want to use?"
number = gets.chomp.to_i

values = []
number.times do |variable|
    puts "What is number ##{variable+1}?"
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
  values.each do |value|
    result = result + value
  end
  puts "Your answer is #{result}!"

elsif operation == 2
  (values).each do |value|
    results = results * value
  end
  puts "Your answer is #{results}!"

elsif operation == 3
  result = values[0]*2
  (values).each do |value|
    result = result - value
  end
  puts "Your answer is #{result}!"

elsif operation == 4
  results = values[0]**2
  (values).each do |value|
    if value == 0
      puts "Your answer is undefined!"
      exit
    end
    results = results / value
  end
  puts "Your answer is #{results}!"

else
  puts "Invalid Input"
end
