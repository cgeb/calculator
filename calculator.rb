def user_input(request)
  puts request
  gets.chomp
end

begin
  first_num = user_input("Please enter the first number:")
  puts "The first number is #{first_num}"

  second_num = user_input("Please enter the second number:")
  puts "The second number is #{second_num}"

  begin
  operation = user_input("Choose the operation you would like to perform: Type + for addition, - for subtraction, * for multiplication, and / for division")
  valid = true
    if operation == "+"
      result = first_num.to_i + second_num.to_i
    elsif operation == "-"
      result = first_num.to_i - second_num.to_i
    elsif operation == "*"
      result = first_num.to_i * second_num.to_i
    elsif operation == "/"
      result = first_num.to_f / second_num.to_f
    else
      puts "Not a valid operation."
      valid = false
    end
  end while valid == false

  puts "The result is #{result}"
  
  answer = user_input("Type Y if you would like to continue using the calculator.")

end while answer == 'Y' || answer == 'y'