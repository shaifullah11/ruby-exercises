#  3f) Write a program to print the factorial of a given Integer

def find_factorial(num)
    if num < 0
      raise ArgumentError, "Input must be a non-negative integer"
    end
    
    ans = 1
    while num > 1
      ans *= num
      num -= 1
    end
    return ans
  end


#  using recursion

def factorialUsingRecursion num
    if num < 0
      raise ArgumentError, "Input must be a non-negative integer"
    end
    return 1 if num == 1 || num == 0
    return num * factorialUsingRecursion(num-1)
  end

  
begin
  puts "Enter a non-negative integer to find its factorial:"
  num = Integer(gets.chomp)
  
  puts "Factorial of #{num} is #{factorialUsingRecursion(num)}"
rescue ArgumentError => e
  puts e.message
rescue => e
  puts "An error occurred: #{e.message}"
end