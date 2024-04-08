#   d) Given an input string S and positive integer N, rotate the string S left N times
def leftRotate(str,n)
    len = str.length
    n = n%len
    return str if n == str
    str = str.reverse
    first , second = str[0..len-1-n] , str[len-n..]
    first = first.reverse
    second = second.reverse
    return first + second
end

puts "Enter a string:"
str = gets.chomp

puts "Enter a Positive Integer:"
n = gets.chomp.to_i

puts leftRotate(str,n)


# elloh
# llohe
# lohel
# ohell
# hello