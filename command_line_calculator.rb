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
puts "3 = Subtract     4 = Divide"
puts
puts "5 = Square                 "
puts
puts "What operation do you want to use?"
operation = gets.chomp.to_i

result = 0
results = 1

if operation == 1
  values.each do |value|
    result = result + value
  end
  puts "         ---------------"
  puts "          ANSWER = #{result}"
  puts "         ---------------"
elsif operation == 2
  (values).each do |value|
    results = results * value
  end
  puts "         ---------------"
  puts "          ANSWER = #{results}"
  puts "         ---------------"
elsif operation == 3
  result = values[0]*2
  (values).each do |value|
    result = result - value
  end
  puts "         ---------------"
  puts "          ANSWER = #{result}"
  puts "         ---------------"
elsif operation == 4
  results = values[0]**2
  (values).each do |value|
    if value == 0
      puts "         ---------------"
      puts "        ANSWER = Undefined"
      puts "         ---------------"
         exit
    end
    results = results / value
  end
  puts "         ---------------"
  puts "          ANSWER = #{results}"
  puts "         ---------------"

elsif operation == 5
  if values.length > 1
    puts "invalid input"
  end
  if values.length == 1
    puts "To what power?"
    power = gets.chomp.to_i
    results = values[0]**power
    puts "         ---------------"
    puts "          ANSWER = #{results}"
    puts "         ---------------"
  end
else
  puts "         --------------- "
  puts "          INVALID INPUT  "
  puts "         ---------------"
end
