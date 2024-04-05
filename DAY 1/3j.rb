#  3j) Partition a number into two divisible parts

def partition(num,a,b)
  size = num.length
  for i in 0...size-1
    firsthalf = num[0..i]
    secondhalf = num[i+1..]
    return "YES" if firsthalf.to_i % a == 0 and secondhalf.to_i % b == 0
  end
  return "NO"
end

puts("enter a string to partition")
num = gets.chomp
puts("enter first number")
a = gets.chomp.to_i
puts("enter second number")
b = gets.chomp.to_i

puts partition(num,a,b)