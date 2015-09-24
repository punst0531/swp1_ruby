member = []
puts "Welcome! This is the Friends list"
loop do
  puts "enter 1 to add a list"
  puts "enter 2 to delete a list"
  puts "enter 3 to exit"
  cmd = gets.chomp
  
  if cmd == "1"
      student = {}
      puts "input your name"
        student[:name] = gets.chomp
      
      puts "input your gender "
        gender = gets.chomp
        if gender == "male"
        student[:gender] = "male"
        elsif gender == "female"
        student[:gender] = "female"
        else
        student[:gender] = "male"
        end
      
      
      member << student
      
      member.each_with_index do |x, index|
      puts "#{index + 1}. Name: #{x[:name]} Gender: #{x[:gender]}"
      end
     
     
     
      
  end
  
  if cmd == "2" 
      puts "input the number you wanna delete"
      delNumber = gets.chomp
      member.delete_at(-1 + delNumber.to_i)
  
      member.each_with_index do |x, index|
      puts "#{index + 1}. Name: #{x[:name]} Gender: #{x[:gender]}"
      end
  end
  
  break if cmd == "3"
end



