#  h) Last digit of nth Fibonacci number 

def fibonacci_series(f,n)
  f[0] = 0 
  f[1] = 1
  
  for i in 2...n
    f[i] = (f[i-2] + f[i-1])%10
  end
  return f  
end

def find_last_digit num
  f = Array.new(60,0)

  f = fibonacci_series(f,60)

  return f[]
end

find_last_digit 54