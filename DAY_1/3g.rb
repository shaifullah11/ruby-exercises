#  g) Compute n! mod p 

def modFact(n,p)
    result = 1
    for i in 2..n
        result *= i
    end
    return result%p
end

puts "Enter the value of n:"
n = gets.chomp.to_i
puts "Enter the value of p:"
p = gets.chomp.to_i
puts modFact(n,p)

