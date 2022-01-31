# build a basic calculator

puts "To function, the calculator will request two integers and an operator"
puts "What is the first integer?"
number1 = gets.chomp
puts "What is the second integer?"
number2 = gets.chomp
puts "what is the operator of choice? 1) + 2) - 3) * 4) /"
operator = gets.chomp
if operator == '1'
     puts number1.to_i + number2.to_i
  elsif operator == '2'
     puts number1.to_i - number2.to_i
  elsif operator == '3'
     puts number1.to_i * number2.to_i
  elsif operator == '4'
     puts number1.to_f / number2.to_f
  else puts "Please use 1, 2, 3, or 4"
end 
     
     
