#  3a) Write a hex to oct converter

def hex_to_oct(hex_num)
    decimal_num = hex_num.hex
    octal_num = decimal_num.to_s(8)
    return octal_num
end


puts "Enter the hex Value"
hex_number = gets.chomp 
octal_number = hex_to_oct(hex_number)
puts "Hexadecimal: #{hex_number}, Octal: #{octal_number}"