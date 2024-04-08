#  3d) Write a program that will check if a given Integer is a perfect number

def perfectNumber num
    sum = 1
    i = 2
    while i * i <= num
      sum = sum + i + num/i if num % i == 0
      i = i + 1
    end
    sum == num ? true : false
  end
  

  puts "Enter a number to check perfect Number:"

  num = gets.chomp.to_i
  puts perfectNumber num
  