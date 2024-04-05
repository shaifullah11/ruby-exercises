#   3c) Write a program that will check if a given Integer is prime or not
def checkPrime num
    if num <=1
      return "Not a Prime Number"
    end
    i = 2 
    while i * i <= num   
      return "Not a Prime Number" if num % i == 0
      i += 1
    end
  
    return "prime Number"
  end
  

  puts "Enter a number to check prime Number:"

  num = gets.chomp.to_i
  puts checkPrime num