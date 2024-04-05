#  3e) Program to find remainder

def findRemainder(num,divisor)
  return (num - divisor * (num / divisor));
end

puts "Enter a number:"

num = gets.chomp.to_i

puts "Enter the divisor:"

divisor = gets.chomp.to_i
puts findRemainder(num,divisor)