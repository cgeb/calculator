begin
  puts "Please enter the first number:"
  first_num = gets.chomp
  puts "The first number is #{first_num}"
  puts "Please enter the second number:"
  second_num = gets.chomp
  puts "The second number is #{second_num}"
  begin
  puts "Choose the operation you would like to perform: Type 1 for addition, 2 for subtraction, 3 for multiplication, and 4 for division"
  operation = gets.chomp
  valid = true
    if operation == "1"
      result = first_num.to_i + second_num.to_i
    elsif operation == "2"
      result = first_num.to_i - second_num.to_i
    elsif operation == "3"
      result = first_num.to_i * second_num.to_i
    elsif operation == "4"
      result = first_num.to_f / second_num.to_f
    else
      puts "Not a valid request."
      valid = false
    end
  end while valid == false
  puts "The result is #{result}"
  puts "Type Y if you would like to continue using the calculator."
  answer = gets.chomp
end while answer == 'Y' || answer == 'y'