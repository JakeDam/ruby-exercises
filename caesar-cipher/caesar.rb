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

#Function that takes a character and enciphers it by the shift value
def encipher(char, shift) 
  if char >= 65 && char <= 90 
    index = char - 65
    shifted_char = (index + shift) % 26
    if shifted_char < 0 
      shifted_char += 26
      enciphered_char = shifted_char + 65
    else
      enciphered_char = shifted_char + 65
    end
  else char >= 97 && char <= 122
    index = char - 97
    shifted_char = (index + shift) % 26
    if shifted_char < 0
      shifted_char += 26
      enchiphered_char = shifted_char + 97
    else 
      enciphered_char = shifted_char + 97
    end 
  end
end



  


      



