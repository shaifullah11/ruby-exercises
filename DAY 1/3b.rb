#  3b) Write a oct to hex converter

def oct_to_hex(octal)
    decimal = octal.to_i(8)
    hexadecimal = decimal.to_s(16).upcase
    return hexadecimal
  end
  

  puts "Enter a octal value:"
  octal_number = gets.chomp
  hexadecimal_number = oct_to_hex(octal_number)
  puts "Hexadecimal equivalent of #{octal_number} is #{hexadecimal_number}"