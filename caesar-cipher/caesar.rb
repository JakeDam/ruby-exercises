#Prompt user for string
puts "Enter message to encipher:"
message = gets.chomp

#Prompt user for shift
shift = nil
until shift.is_a?(Integer) do
  puts "Enter cipher shift:"
  shift = Integer(gets) rescue nil
end

#Create character array and convert to ASCII
message_array = message.split('').map(&:ord)

#Encipher the array by the shift value
enciphered_array = message_array.map do |num|
  if (num >= 65 and num <= 90)
    num -= 65
    num = (num + shift) % 26
    if num < 0 
      num + 26 + 65
    else
      num + 65
    end
  elsif (num >= 97 and num <= 122)
    num -= 97
    num = (num + shift) % 26
    if num < 0 
      num + 26 + 97
    else
      num + 97
    end
  else
    num = num
  end
end


  


      



