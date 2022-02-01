# build a basic calculator

def prompt(message)
  puts ("=> #{message}")
end

def valid_num(number)
    number.to_i !=0
end

prompt "Welcome to Calculator!"
prompt "To function, the calculator will request two integers and an operator"

number1=""
number2=""
answer =""

loop do
    
  loop do 
    prompt "What is the first integer?"
    number1 = gets.chomp
    if valid_num(number1)
      prompt "The number is #{number1}!"
      break
    else prompt "That is an invalid number!"
    end 
  end

  loop do
    prompt "What is the second integer?"
    number2 = gets.chomp
    if valid_num(number2)
      prompt "The number is #{number2}!"
      break
    else
    prompt "That is not a valid number, please try again"
    end
  end

  operator_prompt = <<-MSG 
    What is the operator of choice? 
    1) + 
    2) - 
    3) * 
    4) /
  MSG
  prompt(operator_prompt)

  operator = ""

  loop do
    
    operator = gets.chomp
   
    case operator
    when '1'
      puts number1.to_i + number2.to_i
      break
    when '2'
      puts number1.to_i - number2.to_i
      break
    when '3'
      puts number1.to_i * number2.to_i
      break
    when '4'
      puts number1.to_f / number2.to_f
      break
    else 
      puts "invalid input! input either 1, 2, 3, or 4"
    end
  end

  prompt "would you like to try another calculation? (y/n)"
  answer = gets.chomp.downcase
  unless answer == "y" 
    break
  end
end